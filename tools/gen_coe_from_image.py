#!/usr/bin/env python3
"""
Generate COE file for Vivado SRAM initialization from image files.

Supports:
- PPM (RGB)
- PGM (Grayscale)

Usage:
    python gen_coe_from_image.py <image_file> [--output output.coe] [--width 24] [--height 24]
"""

import argparse
import os
import sys
from pathlib import Path

def read_ppm(filepath):
    """Read PPM (P6 binary or P3 ASCII) image file."""
    with open(filepath, 'rb') as f:
        # Read header
        magic = f.readline().decode().strip()
        
        if magic not in ['P3', 'P6']:
            raise ValueError(f"Not a valid PPM file: {magic}")
        
        # Skip comments
        line = f.readline().decode().strip()
        while line.startswith('#'):
            line = f.readline().decode().strip()
        
        # Read dimensions
        width, height = map(int, line.split())
        
        # Read max value
        max_val = int(f.readline().decode().strip())
        
        # Read pixel data
        pixels = []
        if magic == 'P6':  # Binary
            for _ in range(height):
                row = []
                for _ in range(width):
                    r = f.read(1)[0]
                    g = f.read(1)[0]
                    b = f.read(1)[0]
                    row.append((r, g, b))
                pixels.append(row)
        else:  # P3 ASCII
            data = f.read().decode().split()
            idx = 0
            for _ in range(height):
                row = []
                for _ in range(width):
                    r = int(data[idx])
                    g = int(data[idx + 1])
                    b = int(data[idx + 2])
                    row.append((r, g, b))
                    idx += 3
                pixels.append(row)
        
        return pixels, width, height, max_val


def read_pgm(filepath):
    """Read PGM (P5 binary or P2 ASCII) grayscale image file."""
    with open(filepath, 'rb') as f:
        magic = f.readline().decode().strip()
        
        if magic not in ['P2', 'P5']:
            raise ValueError(f"Not a valid PGM file: {magic}")
        
        line = f.readline().decode().strip()
        while line.startswith('#'):
            line = f.readline().decode().strip()
        
        width, height = map(int, line.split())
        max_val = int(f.readline().decode().strip())
        
        pixels = []
        if magic == 'P5':  # Binary
            for _ in range(height):
                row = []
                for _ in range(width):
                    val = f.read(1)[0]
                    row.append(val)
                pixels.append(row)
        else:  # P2 ASCII
            data = f.read().decode().split()
            idx = 0
            for _ in range(height):
                row = []
                for _ in range(width):
                    row.append(int(data[idx]))
                    idx += 1
                pixels.append(row)
        
        return pixels, width, height, max_val


def resize_image(pixels, src_w, src_h, dst_w, dst_h):
    """Simple nearest-neighbor resize."""
    new_pixels = []
    for y in range(dst_h):
        row = []
        src_y = int(y * src_h / dst_h)
        for x in range(dst_w):
            src_x = int(x * src_w / dst_w)
            row.append(pixels[src_y][src_x])
        new_pixels.append(row)
    return new_pixels


def generate_coe_rgb(pixels, width, height, radix=10, data_width=8):
    """
    Generate COE file content for RGB image.
    Memory layout: (h * W + w) * 3 + c
    """
    lines = [
        "; COE file generated from image",
        f"; Image size: {width}x{height} RGB",
        f"; Total values: {width * height * 3}",
        "",
        f"memory_initialization_radix={radix};",
        "memory_initialization_vector=",
    ]
    
    values = []
    for h in range(height):
        for w in range(width):
            pixel = pixels[h][w]
            if isinstance(pixel, tuple):
                r, g, b = pixel
            else:
                r = g = b = pixel
            values.append(r)
            values.append(g)
            values.append(b)
    
    # Format values
    if radix == 16:
        value_strs = [f"{v:02X}" for v in values]
    else:
        value_strs = [str(v) for v in values]
    
    # Join with commas, last one with semicolon
    lines.append(",\n".join(value_strs) + ";")
    
    return "\n".join(lines)


def generate_coe_grayscale(pixels, width, height, radix=10, data_width=8):
    """Generate COE file content for grayscale image."""
    lines = [
        "; COE file generated from grayscale image",
        f"; Image size: {width}x{height}",
        f"; Total values: {width * height}",
        "",
        f"memory_initialization_radix={radix};",
        "memory_initialization_vector=",
    ]
    
    values = []
    for h in range(height):
        for w in range(width):
            values.append(pixels[h][w])
    
    if radix == 16:
        value_strs = [f"{v:02X}" for v in values]
    else:
        value_strs = [str(v) for v in values]
    
    lines.append(",\n".join(value_strs) + ";")
    
    return "\n".join(lines)


def main():
    parser = argparse.ArgumentParser(
        description="Generate COE file for Vivado SRAM initialization from image"
    )
    parser.add_argument("image", help="Input image file (PPM, PGM)")
    parser.add_argument("-o", "--output", help="Output COE file (default: <image>.coe)")
    parser.add_argument("-W", "--width", type=int, default=24, help="Target width (default: 24)")
    parser.add_argument("-H", "--height", type=int, default=24, help="Target height (default: 24)")
    parser.add_argument("--radix", type=int, default=10, choices=[2, 10, 16],
                        help="Number radix (default: 10)")
    parser.add_argument("--grayscale", action="store_true", help="Output as grayscale")
    
    args = parser.parse_args()
    
    # Determine output file
    if args.output:
        output_file = args.output
    else:
        output_file = Path(args.image).stem + ".coe"
    
    # Read image
    ext = Path(args.image).suffix.lower()
    
    if ext == '.ppm':
        pixels, width, height, max_val = read_ppm(args.image)
        is_rgb = True
    elif ext == '.pgm':
        pixels, width, height, max_val = read_pgm(args.image)
        is_rgb = False
    
    print(f"Input image: {args.image}")
    print(f"  Size: {width}x{height}")
    print(f"  Format: {'RGB' if is_rgb else 'Grayscale'}")
    
    # Resize if needed
    if width != args.width or height != args.height:
        print(f"  Resizing to: {args.width}x{args.height}")
        pixels = resize_image(pixels, width, height, args.width, args.height)
        width, height = args.width, args.height
    
    # Generate COE content
    if is_rgb and not args.grayscale:
        coe_content = generate_coe_rgb(pixels, width, height, args.radix)
        total_values = width * height * 3
    else:
        if is_rgb:
            # Convert to grayscale
            gray_pixels = []
            for row in pixels:
                gray_row = []
                for pixel in row:
                    r, g, b = pixel
                    gray_row.append(int(0.299 * r + 0.587 * g + 0.114 * b))
                gray_pixels.append(gray_row)
            pixels = gray_pixels
        coe_content = generate_coe_grayscale(pixels, width, height, args.radix)
        total_values = width * height
    
    # Write output
    with open(output_file, 'w') as f:
        f.write(coe_content)
    
    print(f"\nGenerated: {output_file}")
    print(f"  Total values: {total_values}")
    print(f"  Radix: {args.radix}")


if __name__ == "__main__":
    main()
