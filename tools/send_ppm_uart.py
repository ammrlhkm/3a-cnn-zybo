#!/usr/bin/env python3
"""
PPM Image Sender via UART for CNN Testing
Sends 24x24 RGB PPM images to Zynq board via UART

Usage:
    python3 send_ppm_uart.py /dev/ttyUSB0 image1.ppm:label1 [image2.ppm:label2 ...]
    python3 send_ppm_uart.py /dev/ttyUSB0 --batch folder/ labels.txt

Protocol:
    1. Send 4 bytes: number of images (little-endian)
    2. For each image:
       a. Send 1 byte: expected class label (0-9)
       b. Send 1728 bytes: raw RGB pixel data (24x24x3)

Image format requirements:
    - 24x24 pixels
    - RGB (3 channels)
    - Total: 1728 bytes per image
"""

import serial
import sys
import struct
import time
import os
import glob
import numpy as np

def read_ppm_image(ppm_file):
    """
    Read a PPM image file and return raw RGB data
    
    Args:
        ppm_file: Path to PPM image file (P3 ASCII or P6 binary)
    
    Returns:
        bytes: Raw RGB pixel data (1728 bytes for 24x24 image)
    """
    print(f"Reading PPM file: {ppm_file}")
    
    try:
        with open(ppm_file, 'rb') as f:
            header = f.read(2)
            f.seek(0)
            
            if header == b'P3':
                # ASCII PPM: parse and convert to bytes
                print("  Format: ASCII PPM (P3)")
                with open(ppm_file, 'r') as fr:
                    lines = fr.readlines()
                    
                # Skip comments and find dimensions
                idx = 0
                while lines[idx].startswith('#'):
                    idx += 1
                
                # Magic number
                if lines[idx].strip() != 'P3':
                    raise ValueError("Not a P3 PPM file")
                idx += 1
                
                # Skip comments
                while lines[idx].startswith('#'):
                    idx += 1
                
                # Dimensions
                dims = lines[idx].strip().split()
                width, height = int(dims[0]), int(dims[1])
                idx += 1
                
                # Max value
                max_val = int(lines[idx].strip())
                idx += 1
                
                # Read pixel data
                data = []
                for i in range(idx, len(lines)):
                    data.extend(map(int, lines[i].strip().split()))
                
                ppm_data = bytes([v & 0xFF for v in data])
                
            elif header == b'P6':
                # Binary PPM: skip header, get raw data
                print("  Format: Binary PPM (P6)")
                with open(ppm_file, 'rb') as fr:
                    content = fr.read()
                    
                # Parse header
                idx = 2  # Skip P6
                while content[idx] in b' \t\n\r':
                    idx += 1
                
                # Skip comments
                while content[idx] == ord('#'):
                    while content[idx] != ord('\n'):
                        idx += 1
                    idx += 1
                    while content[idx] in b' \t\n\r':
                        idx += 1
                
                # Read width
                width_str = b''
                while content[idx] not in b' \t\n\r':
                    width_str += bytes([content[idx]])
                    idx += 1
                width = int(width_str)
                
                while content[idx] in b' \t\n\r':
                    idx += 1
                
                # Read height
                height_str = b''
                while content[idx] not in b' \t\n\r':
                    height_str += bytes([content[idx]])
                    idx += 1
                height = int(height_str)
                
                while content[idx] in b' \t\n\r':
                    idx += 1
                
                # Read max value
                max_str = b''
                while content[idx] not in b' \t\n\r':
                    max_str += bytes([content[idx]])
                    idx += 1
                max_val = int(max_str)
                
                # Skip to start of binary data
                while content[idx] in b' \t\n\r':
                    idx += 1
                
                ppm_data = content[idx:]
            else:
                raise ValueError("File is not a valid PPM (P3 or P6)")
        
        print(f"  Dimensions: {width}x{height}")
        print(f"  Data size: {len(ppm_data)} bytes")
        
        # Validate
        if width != 24 or height != 24:
            raise ValueError(f"Invalid dimensions {width}x{height}. Expected 24x24")
        
        if len(ppm_data) != 1728:
            raise ValueError(f"Invalid data size {len(ppm_data)}. Expected 1728 bytes")
        
        return ppm_data
        
    except Exception as e:
        print(f"ERROR: Failed to read PPM file: {e}")
        raise

def resize_image_nearest(img_32x32, target_size=24):
    """
    Resize 32x32 image to target_size by center cropping
    
    Args:
        img_32x32: numpy array (32, 32, 3)
        target_size: target dimension (default 24)
    
    Returns:
        numpy array (target_size, target_size, 3)
    """
    h, w, c = img_32x32.shape
    
    # Center crop: extract middle target_size x target_size region
    crop_start = (h - target_size) // 2  # = (32 - 24) // 2 = 4
    crop_end = crop_start + target_size
    
    cropped = img_32x32[crop_start:crop_end, crop_start:crop_end, :]
    
    return cropped

def read_cifar10_binary(binary_file, count=100, start_idx=0):
    """
    Read images from CIFAR-10 binary file
    
    CIFAR-10 binary format:
    - Each record is 3073 bytes
    - Byte 0: label (0-9)
    - Bytes 1-3072: image data (3072 = 32×32×3)
    - Image format: CHW (channels, height, width)
      - Bytes 0-1023: Red channel (32×32)
      - Bytes 1024-2047: Green channel (32×32)
      - Bytes 2048-3072: Blue channel (32×32)
    
    Args:
        binary_file: Path to CIFAR-10 binary file (e.g., test_batch.bin)
        count: Number of images to read
        start_idx: Starting index in file
    
    Returns:
        List of tuples (image_data_24x24, label)
        where image_data_24x24 is 1728 bytes (24×24×3 RGB)
    """
    print(f"\nReading CIFAR-10 binary file: {binary_file}")
    
    # CIFAR-10 binary format constants
    RECORD_SIZE = 3073  # 1 label + 3072 pixels
    IMAGE_SIZE = 3072   # 32×32×3
    ORIGINAL_DIM = 32
    TARGET_DIM = 24
    CHANNEL_SIZE = 1024  # 32×32 pixels per channel
    
    try:
        with open(binary_file, 'rb') as f:
            # Get file size to determine number of images
            f.seek(0, 2)  # Seek to end
            file_size = f.tell()
            f.seek(0)  # Seek back to start
            
            total_images = file_size // RECORD_SIZE
            print(f"  Total images in file: {total_images}")
            
            # Validate indices
            if start_idx >= total_images:
                raise ValueError(f"Start index {start_idx} >= total images {total_images}")
            
            if start_idx + count > total_images:
                count = total_images - start_idx
                print(f"  Adjusting count to {count} (max available from start_idx)")
            
            # Seek to start position
            f.seek(start_idx * RECORD_SIZE)
            
            images_data = []
            
            for i in range(count):
                # Read one record
                record = f.read(RECORD_SIZE)
                if len(record) != RECORD_SIZE:
                    print(f"  Warning: Incomplete record at index {start_idx + i}")
                    break
                
                # Extract label (first byte)
                label = record[0]
                
                # Extract image data (remaining 3072 bytes in CHW format)
                # Bytes 0-1023: Red channel (32×32)
                # Bytes 1024-2047: Green channel (32×32)
                # Bytes 2048-3072: Blue channel (32×32)
                img_data = record[1:]
                
                # Split into R, G, B channels
                r_channel = np.frombuffer(img_data[0:CHANNEL_SIZE], dtype=np.uint8).reshape(ORIGINAL_DIM, ORIGINAL_DIM)
                g_channel = np.frombuffer(img_data[CHANNEL_SIZE:2*CHANNEL_SIZE], dtype=np.uint8).reshape(ORIGINAL_DIM, ORIGINAL_DIM)
                b_channel = np.frombuffer(img_data[2*CHANNEL_SIZE:3*CHANNEL_SIZE], dtype=np.uint8).reshape(ORIGINAL_DIM, ORIGINAL_DIM)
                
                # Stack into (32, 32, 3) HWC format
                img_32x32 = np.stack([r_channel, g_channel, b_channel], axis=2)
                
                # Crop to 24×24 (center crop)
                img_24x24 = resize_image_nearest(img_32x32, TARGET_DIM)
                
                # Convert to bytes (HWC format, RGB interleaved)
                img_bytes = img_24x24.tobytes()
                
                if len(img_bytes) != 1728:
                    raise ValueError(f"Image data size {len(img_bytes)} != 1728")
                
                images_data.append((img_bytes, label))
                
                # Progress
                if (i + 1) % 10 == 0 or i == 0:
                    print(f"  Loaded {i + 1}/{count} images...", end='\r')
            
            print(f"  Loaded {len(images_data)}/{count} images - Complete!")
            
            return images_data
            
    except Exception as e:
        print(f"ERROR: Failed to read CIFAR-10 binary file: {e}")
        raise

def send_images_uart(port, images_data, baud_rate=115200):
    """
    Send multiple PPM images via UART
    
    Args:
        port: Serial port device (e.g., '/dev/ttyUSB0' or 'COM3')
        images_data: List of tuples (ppm_data, label)
        baud_rate: UART baud rate (default: 115200)
    """
    
    # Open serial port
    print(f"\nOpening serial port {port} at {baud_rate} baud...")
    try:
        ser = serial.Serial(
            port=port,
            baudrate=baud_rate,
            bytesize=serial.EIGHTBITS,
            parity=serial.PARITY_NONE,
            stopbits=serial.STOPBITS_ONE,
            timeout=2
        )
    except serial.SerialException as e:
        print(f"ERROR: Failed to open serial port: {e}")
        sys.exit(1)
    
    print(f"Serial port opened successfully")
    
    # Wait for board to be ready
    print("\nWaiting for board initialization...")
    time.sleep(2)
    
    # Clear any pending data
    if ser.in_waiting:
        ser.read(ser.in_waiting)
    
    num_images = len(images_data)
    print(f"\n{'='*60}")
    print(f"Sending {num_images} images to Zynq board")
    print(f"{'='*60}\n")
    
    # Send number of images (4 bytes, little-endian)
    count_bytes = struct.pack('<I', num_images)
    print(f"Sending image count: {num_images}")
    ser.write(count_bytes)
    ser.flush()
    time.sleep(0.1)
    
    # Send each image
    for idx, (ppm_data, label) in enumerate(images_data):
        print(f"\n--- Image {idx + 1}/{num_images} ---")
        print(f"Label: {label}")
        
        # Send label (1 byte)
        ser.write(bytes([label]))
        ser.flush()
        
        # Send image data (1728 bytes)
        print(f"Sending {len(ppm_data)} bytes of image data...")
        
        chunk_size = 256
        bytes_sent = 0
        
        for i in range(0, len(ppm_data), chunk_size):
            chunk = ppm_data[i:i+chunk_size]
            ser.write(chunk)
            ser.flush()
            bytes_sent += len(chunk)
            
            # Print progress
            progress = (bytes_sent * 100) // len(ppm_data)
            print(f"  Progress: {progress:3d}% ({bytes_sent:4d}/{len(ppm_data)} bytes)", end='\r')
            
            # Small delay
            time.sleep(0.01)
        
        print(f"  Progress: 100% ({bytes_sent}/{len(ppm_data)} bytes) - Complete!")
    
    print(f"\n{'='*60}")
    print(f"Transfer complete! Sent {num_images} images")
    print(f"{'='*60}\n")
    
    # Wait for board to process
    print("Waiting for board to process images...")
    time.sleep(1)
    
    # Read board output
    print("\nBoard output:")
    print("-" * 60)
    
    # Read for a few seconds
    start_time = time.time()
    while time.time() - start_time < 5:
        if ser.in_waiting:
            data = ser.read(ser.in_waiting)
            try:
                print(data.decode('utf-8', errors='ignore'), end='')
            except:
                pass
        time.sleep(0.1)
    
    print("\n" + "-" * 60)
    
    # Close serial port
    ser.close()
    print("\nSerial port closed.")

def main():
    if len(sys.argv) < 2:
        print("Usage:")
        print(f"  {sys.argv[0]} <serial_port> <image1.ppm:label1> [image2.ppm:label2 ...]")
        print(f"  {sys.argv[0]} <serial_port> --binary <cifar10.bin> [--count N] [--start N]")
        print()
        print("Examples:")
        print(f"  {sys.argv[0]} /dev/ttyUSB1 airplane.ppm:0 cat.ppm:3 dog.ppm:5")
        print(f"  {sys.argv[0]} COM3 test.ppm:0")
        print(f"  {sys.argv[0]} /dev/ttyUSB1 --binary test_batch.bin --count 100")
        print(f"  {sys.argv[0]} /dev/ttyUSB1 --binary test_batch.bin --count 50 --start 100")
        print()
        print("CIFAR-10 Labels:")
        print("  0=airplane, 1=automobile, 2=bird, 3=cat, 4=deer")
        print("  5=dog, 6=frog, 7=horse, 8=ship, 9=truck")
        print()
        print("Image requirements: 24x24 pixels, RGB (1728 bytes)")
        sys.exit(1)
    
    # Normal operation - send images
    port = sys.argv[1]
    
    # Check for binary CIFAR-10 mode
    if len(sys.argv) >= 4 and sys.argv[2] == '--binary':
        binary_file = sys.argv[3]
        
        if not os.path.exists(binary_file):
            print(f"ERROR: File not found: {binary_file}")
            sys.exit(1)
        
        # Parse optional arguments
        count = 100  # Default
        start_idx = 0
        
        i = 4
        while i < len(sys.argv):
            if sys.argv[i] == '--count' and i + 1 < len(sys.argv):
                count = int(sys.argv[i + 1])
                i += 2
            elif sys.argv[i] == '--start' and i + 1 < len(sys.argv):
                start_idx = int(sys.argv[i + 1])
                i += 2
            else:
                print(f"ERROR: Unknown argument: {sys.argv[i]}")
                sys.exit(1)
        
        print(f"Binary CIFAR-10 mode")
        print(f"  File: {binary_file}")
        print(f"  Count: {count}")
        print(f"  Start index: {start_idx}")
        
        # Read images from binary file
        images_data = read_cifar10_binary(binary_file, count=count, start_idx=start_idx)
        
        print(f"\nLoaded {len(images_data)} images from CIFAR-10 binary file")
        
        # Show label distribution
        label_counts = {}
        for _, label in images_data:
            label_counts[label] = label_counts.get(label, 0) + 1
        
        print("\nLabel distribution:")
        class_names = ["airplane", "automobile", "bird", "cat", "deer",
                      "dog", "frog", "horse", "ship", "truck"]
        for label in sorted(label_counts.keys()):
            print(f"  Class {label} ({class_names[label]:10s}): {label_counts[label]} images")
        
        # Send images via UART
        send_images_uart(port, images_data)
        sys.exit(0)
    
    # PPM file mode
    if len(sys.argv) < 3:
        print("ERROR: No images specified")
        print(f"Usage: {sys.argv[0]} <serial_port> <image1.ppm:label1> [image2.ppm:label2 ...]")
        print(f"   Or: {sys.argv[0]} <serial_port> --binary <cifar10.bin> [--count N]")
        sys.exit(1)
    
    # Parse image:label pairs
    images_data = []
    
    for arg in sys.argv[2:]:
        if ':' not in arg:
            print(f"ERROR: Invalid format '{arg}'. Expected 'image.ppm:label'")
            sys.exit(1)
        
        ppm_file, label_str = arg.split(':', 1)
        
        try:
            label = int(label_str)
            if label < 0 or label > 9:
                print(f"ERROR: Invalid label {label}. Must be 0-9")
                sys.exit(1)
        except ValueError:
            print(f"ERROR: Invalid label '{label_str}'. Must be an integer 0-9")
            sys.exit(1)
        
        if not os.path.exists(ppm_file):
            print(f"ERROR: File not found: {ppm_file}")
            sys.exit(1)
        
        # Read PPM image
        ppm_data = read_ppm_image(ppm_file)
        images_data.append((ppm_data, label))
        print(f"  ✓ Loaded: {ppm_file} (label={label})")
    
    print(f"\nTotal images loaded: {len(images_data)}")
    
    # Send images via UART
    send_images_uart(port, images_data)

if __name__ == '__main__':
    main()

