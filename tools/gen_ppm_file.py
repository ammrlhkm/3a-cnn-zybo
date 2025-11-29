import numpy as np
import matplotlib.pyplot as plt
import pickle
import argparse


def load_pickle(file):
    """Load a CIFAR-10 batch file using pickle."""
    with open(file, 'rb') as fo:
        data = pickle.load(fo, encoding='bytes')
    return data

def save_image_for_c(index, filename_prefix="cifar_img"):
    raw_img = test_data[b'data'][index].reshape(3, 32, 32).transpose(1, 2, 0)
    cropped_img = raw_img[4:28, 4:28, :]
    
    img_int = cropped_img.astype(np.uint8)

    ppm_filename = f"{test_data[b'labels'][index]}_{test_data[b'filenames'][index].decode('utf-8')[:-4]}.ppm"
    ppm_filename = f"dataset/{ppm_filename}"
    height, width, channels = img_int.shape
    with open(ppm_filename, 'w') as f:
        f.write(f"P3\n{width} {height}\n255\n")
        for y in range(height):
            for x in range(width):
                r, g, b = img_int[y, x]
                f.write(f"{r}\n{g}\n{b}\n")
    print(f"Saved Color Image: {ppm_filename}")
    
# =============================================================================
# MAIN ENTRY POINT
# =============================================================================
if __name__ == "__main__":
    
    # Parse command-line arguments
    parser = argparse.ArgumentParser(description='Generate PPM files from CIFAR-10 test images.')
    parser.add_argument('--filename', '-f', type=str, default="dataset/cifar-10-batches-py/test_batch",
                        help='Filename of the CIFAR-10 batch file (default: dataset/cifar-10-batches-py/test_batch)')
    parser.add_argument('--index', '-i', type=int, default=3,
                        help='Index of the image to generate PPM file for (default: 3)')

    args = parser.parse_args()

    test_data = load_pickle(args.filename)
    save_image_for_c(args.index)