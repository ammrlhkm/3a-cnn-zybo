import numpy as np



if __name__ == "__main__":

    with open('include/image_ppm.h', 'w') as f:
        f.write('#ifndef IMAGE_PPM\n#define IMAGE_PPM\n\n')
        f.write('#include "config.h"\n\n')
        f.write('typedef ac_fixed<IMAGE_P> image_t;\n\n')
        img=open('dataset/cat.ppm')

        format=img.readline()
        line=img.readline()
        while line[0] == '#' : line=img.readline()
        (width,height) = [int(i) for i in line.split()]
        valmax=img.readline()
        raster = []
        for line in img:
            raster += [int(i) for i in line.split()]

        img.close()

        f.write(f'const int IMG_WIDTH = {width};\n')
        f.write(f'const int IMG_HEIGHT = {height};\n')
        
        f.write(f'const image_t image_data[IMG_HEIGHT][IMG_WIDTH][3] = {{\n')
        idx = 0
        for i in range(height):
            f.write('    {\n')
            for j in range(width):
                f.write('        {')
                f.write(', '.join(f'{raster[idx + c]}' for c in range(3)))
                f.write('}')
                if j != width - 1:
                    f.write(',\n')
                idx += 3
            f.write('\n    }')
            if i != height - 1:
                f.write(',\n')
        f.write('\n};\n\n')

        f.write('#endif // IMAGE_PPM\n')