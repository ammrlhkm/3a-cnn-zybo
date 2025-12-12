#!/usr/bin/env python3
"""
Convert PPM P6 (binary) to P3 (ASCII) format
"""

import sys

def convert_p6_to_p3(input_file, output_file):
    """Convert P6 PPM to P3 PPM"""
    with open(input_file, 'rb') as f:
        # Read header
        magic = f.readline().decode('ascii').strip()
        if magic != 'P6':
            raise ValueError(f"Not a P6 PPM file: {magic}")
        
        # Skip comments and read dimensions
        line = f.readline().decode('ascii')
        while line.startswith('#'):
            line = f.readline().decode('ascii')
        
        width, height = map(int, line.strip().split())
        maxval = int(f.readline().decode('ascii').strip())
        
        # Read pixel data
        data = f.read()
    
    # Write P3 format
    with open(output_file, 'w') as f:
        f.write('P3\n')
        f.write(f'{width} {height}\n')
        f.write(f'{maxval}\n')
        
        # Write pixels in ASCII (3 values per pixel, multiple pixels per line)
        pixels_per_line = 5
        for i in range(0, len(data), 3):
            r, g, b = data[i], data[i+1], data[i+2]
            f.write(f'{r} {g} {b}  ')
            if (i // 3 + 1) % pixels_per_line == 0:
                f.write('\n')
        
        if (len(data) // 3) % pixels_per_line != 0:
            f.write('\n')
    
    print(f"Converted {input_file} (P6) -> {output_file} (P3)")
    print(f"  Image size: {width}x{height}")
    print(f"  Total pixels: {width * height}")

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: convert_p6_to_p3.py <input_p6.ppm> <output_p3.ppm>")
        sys.exit(1)
    
    convert_p6_to_p3(sys.argv[1], sys.argv[2])
