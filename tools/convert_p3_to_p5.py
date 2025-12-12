#!/usr/bin/env python3
"""
Convert PPM P3 to PGM P5 format
"""

import sys

def convert_p3_to_p5(input_file, output_file):
    """Convert P3 PPM to P5 PGM (grayscale)"""
    with open(input_file, 'r') as f:
        # Read header
        magic = f.readline().strip()
        if magic != 'P3':
            raise ValueError(f"Not a P3 PPM file: {magic}")
        
        # Skip comments and read dimensions
        line = f.readline()
        while line.startswith('#'):
            line = f.readline()
        
        width, height = map(int, line.strip().split())
        maxval = int(f.readline().strip())
        
        # Read pixel data
        data = f.read().split()
    
    # Convert to grayscale and write P5 format
    with open(output_file, 'wb') as f:
        f.write(b'P5\n')
        f.write(f'{width} {height}\n'.encode('ascii'))
        f.write(f'{maxval}\n'.encode('ascii'))
        
        # Write pixels in binary (1 value per pixel)
        for i in range(0, len(data), 3):
            r = int(data[i])
            g = int(data[i + 1])
            b = int(data[i + 2])
            gray = (r * 0.299 + g * 0.587 + b * 0.114)
            f.write(bytes([int(gray)]))
    
    print(f"Converted {input_file} (P3) -> {output_file} (P5)")
    print(f"  Image size: {width}x{height}")
    print(f"  Total pixels: {width * height}")

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: convert_p3_to_p5.py <input_p3.ppm> <output_p5.pgm>")
        sys.exit(1)
    
    convert_p3_to_p5(sys.argv[1], sys.argv[2])
