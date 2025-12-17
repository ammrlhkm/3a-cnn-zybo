#!/usr/bin/env python3
"""
Generate VHDL SRAM entity with initial pixel values from image file.

This creates a VHDL file where the SRAM signal is initialized with image pixels.
Useful for simulation and validation before using actual camera input.

Supports:
- PPM (RGB)
- PGM (Grayscale)

Options:
- --normalize: Apply mean/std normalization (matches cnn_ref.py)
- --rom: Generate read-only ROM

Usage:
    python gen_vhdl_sram_from_image.py <image_file> [--output output.vhd] [--width 24] [--height 24]
    python gen_vhdl_sram_from_image.py <image_file> --normalize -e input_image_rom -o input_image_rom.vhd
"""

import argparse
import os
import sys
from pathlib import Path
from datetime import datetime
import math
import numpy as np


def read_ppm(filepath):
    """Read PPM (P6 binary or P3 ASCII) image file."""
    with open(filepath, 'rb') as f:
        magic = f.readline().decode().strip()
        
        if magic not in ['P3', 'P6']:
            raise ValueError(f"Not a valid PPM file: {magic}")
        
        line = f.readline().decode().strip()
        while line.startswith('#'):
            line = f.readline().decode().strip()
        
        width, height = map(int, line.split())
        max_val = int(f.readline().decode().strip())
        
        pixels = []
        if magic == 'P6':
            for _ in range(height):
                row = []
                for _ in range(width):
                    r = f.read(1)[0]
                    g = f.read(1)[0]
                    b = f.read(1)[0]
                    row.append((r, g, b))
                pixels.append(row)
        else:
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
        
        return pixels, width, height


def read_pgm(filepath):
    """Read PGM grayscale image file."""
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
        if magic == 'P5':
            for _ in range(height):
                row = []
                for _ in range(width):
                    val = f.read(1)[0]
                    row.append(val)
                pixels.append(row)
        else:
            data = f.read().decode().split()
            idx = 0
            for _ in range(height):
                row = []
                for _ in range(width):
                    row.append(int(data[idx]))
                    idx += 1
                pixels.append(row)
        
        return pixels, width, height


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


def normalize_image(pixels, width, height):
    """
    Normalize image using mean and standard deviation.
    This matches the normalizeImage() function in preprocess_image.cpp:
    
        mean = sum(pixels) / N
        std = sqrt(sum_sq / N - mean * mean)
        normalized = (pixel - mean) / max(std, 1/sqrt(N))
    
    Returns normalized values as floating point array.
    """
    N = width * height * 3
    
    # Calculate sum and sum of squares
    sum_val = 0.0
    sum_sq = 0.0
    for h in range(height):
        for w in range(width):
            pixel = pixels[h][w]
            if isinstance(pixel, tuple):
                r, g, b = pixel
            else:
                r = g = b = pixel
            
            sum_val += float(r) + float(g) + float(b)
            sum_sq += float(r) * float(r) + float(g) * float(g) + float(b) * float(b)
    
    # Calculate mean and standard deviation using computational formula
    mean = sum_val / N
    std_dev = np.sqrt(sum_sq / N - mean * mean)
    
    # Minimum standard deviation threshold
    min_std = 1.0 / np.sqrt(N)
    
    # Normalize: (pixel - mean) / max(std_dev, min_std)
    divisor = max(std_dev, min_std)
    
    # Create normalized pixel array
    normalized = []
    for h in range(height):
        row = []
        for w in range(width):
            pixel = pixels[h][w]
            if isinstance(pixel, tuple):
                r, g, b = pixel
            else:
                r = g = b = pixel
            norm_r = (float(r) - mean) / divisor
            norm_g = (float(g) - mean) / divisor
            norm_b = (float(b) - mean) / divisor
            row.append((norm_r, norm_g, norm_b))
        normalized.append(row)
    
    return normalized, mean, std_dev


def float_to_fixed_point(value, total_bits, int_bits, signed=True):
    """
    Convert floating point value to fixed-point representation.
    
    Args:
        value: Float value to convert
        total_bits: Total number of bits (e.g., 10)
        int_bits: Number of integer bits (e.g., 5)
        signed: Whether the format is signed
    
    Returns:
        Integer representation of the fixed-point value
    """
    frac_bits = total_bits - int_bits
    scale = 2 ** frac_bits
    
    # Scale and truncate (floor) - matches ac_fixed default quantization mode AC_TRN
    fixed_val = int(np.floor(value * scale))
    
    if signed:
        # Clamp to signed range
        min_val = -(2 ** (total_bits - 1))
        max_val = (2 ** (total_bits - 1)) - 1
    else:
        # Clamp to unsigned range
        min_val = 0
        max_val = (2 ** total_bits) - 1
    
    fixed_val = max(min_val, min(max_val, fixed_val))
    
    # Convert negative to two's complement
    if signed and fixed_val < 0:
        fixed_val = (2 ** total_bits) + fixed_val
    
    return fixed_val


def generate_vhdl_normalized_rom(pixels, width, height, entity_name, image_file,
                                  total_bits=10, int_bits=5, signed=True):
    """
    Generate VHDL ROM with normalized fixed-point pixel values.
    
    Fixed-point format: IMAGE_P(10, 5, true)
      - 10 total bits
      - 5 integer bits (includes sign bit for signed)
      - 5 fractional bits
      - Signed: range approximately [-16, +16) with 0.03125 resolution
    """
    # Normalize the image
    norm_pixels, mean, std_dev = normalize_image(pixels, width, height)
    
    depth = width * height * 3
    addr_bits = max(1, math.ceil(math.log2(depth)))
    frac_bits = total_bits - int_bits
    
    # Calculate value range
    if signed:
        min_range = -(2 ** (int_bits - 1))
        max_range = (2 ** (int_bits - 1)) - (1 / (2 ** frac_bits))
    else:
        min_range = 0
        max_range = (2 ** int_bits) - (1 / (2 ** frac_bits))
    
    vhdl = f"""--------------------------------------------------------------------------------
-- VHDL ROM with NORMALIZED image pixels (fixed-point format)
-- Generated from: {image_file}
-- Generated on: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
-- 
-- Image size: {width}x{height} RGB
-- Memory depth: {depth} values
-- Address bits: {addr_bits}
--
-- Normalization applied (matches cnn_ref.py):
--   mean = {mean:.4f}
--   std_dev = {std_dev:.4f}
--   normalized = (pixel - mean) / std_dev
--
-- Fixed-point format: Q{int_bits}.{frac_bits} ({'signed' if signed else 'unsigned'})
--   Total bits: {total_bits}
--   Integer bits: {int_bits} {'(including sign)' if signed else ''}
--   Fractional bits: {frac_bits}
--   Range: [{min_range:.4f}, {max_range:.4f}]
--   Resolution: {1/(2**frac_bits):.6f}
--
-- Memory layout: Interleaved RGB
--   addr = (h * {width} + w) * 3 + channel
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity {entity_name} is
    generic (
        CELL_COUNT : integer := {depth};
        ADDR_WIDTH : integer := {addr_bits};
        DATA_WIDTH : integer := {total_bits}
    );
    port (
        clk     : in  std_logic;
        addr    : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        dout    : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity {entity_name};

architecture rtl of {entity_name} is
    
    type mem_type is array (0 to CELL_COUNT-1) of std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Output register for better timing (addresses SYNTH-6 warning)
    signal dout_reg : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');

    -- Normalized fixed-point pixel values
    constant mem : mem_type := (
"""
    
    # Generate normalized fixed-point values
    values = []
    float_values = []  # For statistics

    # Interleaved: RGB, RGB, RGB...
    for h in range(height):
        for w in range(width):
            norm_pixel = norm_pixels[h][w]
            for c in range(3):
                float_val = norm_pixel[c]
                float_values.append(float_val)
                fixed_val = float_to_fixed_point(float_val, total_bits, int_bits, signed)
                values.append(fixed_val)
    
    # Format VHDL array initialization
    # For non-standard bit widths (not 4, 8, 12, 16...), use binary literals
    # to avoid VHDL width mismatch errors
    lines = []
    use_binary = (total_bits % 4) != 0  # Use binary if not a multiple of 4
    
    for i, val in enumerate(values):
        if use_binary:
            # Use binary literal for exact bit width
            bin_val = f'"{val:0{total_bits}b}"'
            val_str = bin_val
        else:
            # Use hex for standard widths
            hex_width = total_bits // 4
            val_str = f'X"{val:0{hex_width}X}"'
        
        if i < len(values) - 1:
            lines.append(f"        {i} => {val_str},  -- {float_values[i]:+.4f}")
        else:
            lines.append(f"        {i} => {val_str}   -- {float_values[i]:+.4f}")
    
    vhdl += "\n".join(lines)
    
    vhdl += f"""
    );
    
begin
    
    process(clk)
    begin
        if rising_edge(clk) then
            dout_reg <= mem(to_integer(unsigned(addr)));
        end if;
    end process;

    -- Output assignment
    dout <= dout_reg;
end architecture rtl;
"""
    
    # Print statistics
    float_arr = np.array(float_values)
    print(f"  Normalization stats:")
    print(f"    Mean of original image: {mean:.4f}")
    print(f"    Std dev of original image: {std_dev:.4f}")
    print(f"    Normalized value range: [{float_arr.min():.4f}, {float_arr.max():.4f}]")
    print(f"    Normalized mean: {float_arr.mean():.6f} (should be ~0)")
    print(f"    Normalized std: {float_arr.std():.6f} (should be ~1)")
    
    return vhdl


def generate_vhdl_rom_rgb(pixels, width, height, entity_name, image_file):
    """
    Generate VHDL ROM entity (read-only) with RGB pixel initialization.
    Uses case statement for better synthesis optimization.
    """
    depth = width * height * 3
    addr_bits = max(1, math.ceil(math.log2(depth)))
    
    vhdl = f"""--------------------------------------------------------------------------------
-- VHDL ROM with image pixel initialization (Read-Only)
-- Generated from: {image_file}
-- Generated on: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
-- Image size: {width}x{height} RGB
-- Memory depth: {depth} bytes
-- Address bits: {addr_bits}
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity {entity_name} is
    generic (
        CELL_COUNT : integer := {depth};
        ADDR_WIDTH : integer := {addr_bits};
        DATA_WIDTH : integer := 8
    );
    port (
        clk     : in  std_logic;
        addr    : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        dout    : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity {entity_name};

architecture rtl of {entity_name} is
    
    -- Memory type
    type mem_type is array (0 to {depth-1}) of std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Output register for better timing (addresses SYNTH-6 warning)
    signal dout_reg : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');

    -- Constant memory with image pixels
    constant mem : mem_type := (
"""
    
    # Generate pixel values
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
    
    # Format VHDL array initialization
    lines = []
    for i, val in enumerate(values):
        hex_val = f'X"{val:02X}"'
        if i < len(values) - 1:
            lines.append(f"        {i} => {hex_val},  -- {values[i]:+.4f}")
        else:
            lines.append(f"        {i} => {hex_val},  -- {values[i]:+.4f}")
    
    vhdl += "\n".join(lines)
    
    vhdl += f"""
    );
    
begin
    
    process(clk)
    begin
        if rising_edge(clk) then
            dout_reg <= mem(to_integer(unsigned(addr)));
        end if;
    end process;

    -- Output assignment
    dout <= dout_reg;
    
end architecture rtl;
"""
    
    return vhdl


def generate_vhdl_rom_grayscale(pixels, width, height, entity_name, image_file):
    """
    Generate VHDL ROM entity (read-only) with grayscale pixel initialization.
    Converts RGB to grayscale using luminance formula: Y = 0.299*R + 0.587*G + 0.114*B
    """
    depth = width * height
    addr_bits = max(1, math.ceil(math.log2(depth)))
    
    vhdl = f"""--------------------------------------------------------------------------------
-- VHDL ROM with grayscale image pixel initialization (Read-Only)
-- Generated from: {image_file}
-- Generated on: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
-- Image size: {width}x{height} Grayscale
-- Memory depth: {depth} bytes
-- Address bits: {addr_bits}
-- Conversion: Y = 0.299*R + 0.587*G + 0.114*B
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity {entity_name} is
    generic (
        CELL_COUNT : integer := {depth};
        ADDR_WIDTH : integer := {addr_bits};
        DATA_WIDTH : integer := 8
    );
    port (
        clk     : in  std_logic;
        addr    : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        dout    : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity {entity_name};

architecture rtl of {entity_name} is
    
    -- Memory type
    type mem_type is array (0 to {depth-1}) of std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Output register for better timing (addresses SYNTH-6 warning)
    signal dout_reg : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');

    -- Constant memory with grayscale pixels
    constant mem : mem_type := (
"""
    
    # Generate grayscale values using luminance formula
    values = []
    for h in range(height):
        for w in range(width):
            pixel = pixels[h][w]
            if isinstance(pixel, tuple):
                r, g, b = pixel
                # ITU-R BT.601 luma coefficients
                gray = int(0.299 * r + 0.587 * g + 0.114 * b)
            else:
                gray = pixel
            values.append(gray)
    
    # Format VHDL array initialization
    lines = []
    for i, val in enumerate(values):
        hex_val = f'X"{val:02X}"'
        if i < len(values) - 1:
            lines.append(f"        {i} => {hex_val},  -- {values[i]}")
        else:
            lines.append(f"        {i} => {hex_val}   -- {values[i]}")
    
    vhdl += "\n".join(lines)
    
    vhdl += f"""
    );
    
begin
    
    process(clk)
    begin
        if rising_edge(clk) then
            dout_reg <= mem(to_integer(unsigned(addr)));
        end if;
    end process;

    -- Output assignment
    dout <= dout_reg;
    
end architecture rtl;
"""
    
    return vhdl


def main():
    parser = argparse.ArgumentParser(
        description="Generate VHDL SRAM entity with image pixel initialization"
    )
    parser.add_argument("image", help="Input image file (PPM, PGM)")
    parser.add_argument("-o", "--output", help="Output VHDL file (default: <image>_sram.vhd)")
    parser.add_argument("-W", "--width", type=int, default=24, help="Target width (default: 24)")
    parser.add_argument("-H", "--height", type=int, default=24, help="Target height (default: 24)")
    parser.add_argument("-e", "--entity", help="VHDL entity name (default: image_sram)")
    # parser.add_argument("--rom", action="store_true", help="Generate ROM instead of SRAM")
    parser.add_argument("--normalize", action="store_true",
                        help="Apply mean/std normalization and output fixed-point values")
    parser.add_argument("--grayscale", action="store_true",
                        help="Apply grayscale transformation")    
    parser.add_argument("--total-bits", type=int, default=10,
                        help="Total bits for fixed-point (default: 10)")
    parser.add_argument("--int-bits", type=int, default=5,
                        help="Integer bits for fixed-point (default: 5)")
    parser.add_argument("--unsigned", action="store_true",
                        help="Use unsigned fixed-point (default: signed)")
    
    args = parser.parse_args()
    
    # Determine output file and entity name
    base_name = Path(args.image).stem
    if args.output:
        output_file = args.output
    else:
        output_file = base_name + "_rom.vhd"
    
    if args.entity:
        entity_name = args.entity
    else:
        entity_name = base_name.replace("-", "_").replace(" ", "_")
        entity_name += "_rom"
    
    # Read image
    ext = Path(args.image).suffix.lower()
    
    if ext == '.ppm':
        pixels, width, height = read_ppm(args.image)
    elif ext == '.pgm':
        pixels, width, height = read_pgm(args.image)
    
    print(f"Input image: {args.image}")
    print(f"  Original size: {width}x{height}")
    
    # Resize if needed
    if width != args.width or height != args.height:
        print(f"  Resizing to: {args.width}x{args.height}")
        pixels = resize_image(pixels, width, height, args.width, args.height)
        width, height = args.width, args.height
    
    # Generate VHDL
    if args.normalize:
        # Generate normalized fixed-point ROM
        vhdl_content = generate_vhdl_normalized_rom(
            pixels, width, height, entity_name, os.path.basename(args.image),
            total_bits=args.total_bits,
            int_bits=args.int_bits,
            signed=not args.unsigned,
        )
        data_bits = args.total_bits
    elif args.grayscale:
        vhdl_content = generate_vhdl_rom_grayscale(
            pixels, width, height, entity_name, os.path.basename(args.image)
        )
        data_bits = 8
    else:
        vhdl_content = generate_vhdl_rom_rgb(
            pixels, width, height, entity_name, os.path.basename(args.image)
        )
        data_bits = 8
    
    # Write output
    with open(output_file, 'w') as f:
        f.write(vhdl_content)
    
    depth = width * height * 3
    addr_bits = max(1, math.ceil(math.log2(depth)))
    
    print(f"\nGenerated: {output_file}")
    print(f"  Entity: {entity_name}")
    print(f"  Memory depth: {depth} values")
    print(f"  Address bits: {addr_bits}")
    print(f"  Data width: {data_bits} bits")
    if args.normalize:
        print(f"  Fixed-point: Q{args.int_bits}.{args.total_bits - args.int_bits} ({'unsigned' if args.unsigned else 'signed'})")
    print(f"  Format: Interleaved RGB")


if __name__ == "__main__":
    main()
