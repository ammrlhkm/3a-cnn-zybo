import numpy as np
import re

def load_cnn_weights(filename, kernel_size=3):
    """Parse CNN weight tensors from the text file and reshape them."""
    with open(filename, 'r') as f:
        content = f.read()

    tensors = {}
    sections = content.split('tensor_name:')[1:]

    for section in sections:
        lines = section.strip().split('\n', 1)
        tensor_name = lines[0].strip()

        if len(lines) > 1:
            array_text = lines[1]
            start_idx = array_text.find('[')
            end_idx = array_text.rfind(']')
            if start_idx != -1 and end_idx != -1:
                numbers_text = array_text[start_idx+1:end_idx]
                numbers = re.findall(r'[-+]?\d*\.?\d+(?:[eE][-+]?\d+)?', numbers_text)
                tensor_data = np.array([float(x) for x in numbers], dtype=np.float32)
                tensors[tensor_name] = tensor_data

    tensors['conv1/weights'] = tensors['conv1/weights'].reshape(kernel_size, kernel_size, 3, 64)
    tensors['conv2/weights'] = tensors['conv2/weights'].reshape(kernel_size, kernel_size, 64, 32)
    tensors['conv3/weights'] = tensors['conv3/weights'].reshape(kernel_size, kernel_size, 32, 20)
    tensors['local3/weights'] = tensors['local3/weights'].reshape(180, 10)

    return tensors

arr_name = ['CONV1_W', 'CONV2_W', 'CONV3_W', 'CONV1_B', 'CONV2_B', 'CONV3_B', 'LOCAL3_W', 'LOCAL3_B']

tensor_name = ['conv1/weights', 'conv2/weights', 'conv3/weights', 'conv1/biases', 'conv2/biases', 'conv3/biases', 'local3/weights', 'local3/biases']
features = [3, 64, 32, 20]
kernel_size = 3

if __name__ == "__main__":
    weights = load_cnn_weights('dataset/CNN_coeff_3x3.txt')
    with open('include/coeffs_double.h', 'w') as f:
        f.write('#ifndef COEFFS_DOUBLE_H_\n#define COEFFS_DOUBLE_H_\n\n')

        for x in range(len(arr_name)):
            if arr_name[x].startswith('CONV') and arr_name[x].endswith('_W'):
                f.write(f'const double {arr_name[x]}[{kernel_size}][{kernel_size}][{features[x]}][{features[x+1]}] = {{\n')
                for i in range(kernel_size):
                    f.write('    {\n')
                    for j in range(kernel_size):
                        f.write('        {\n')
                        for k in range(features[x]):
                            f.write('            {')
                            f.write(', '.join(f'{weights[tensor_name[x]][i][j][k][l]:.10f}' for l in range(features[x+1])))
                            f.write('},\n')
                        f.write('        },\n')
                    f.write('    },\n')
                f.write('};\n\n')
            elif arr_name[x].startswith('CONV') and arr_name[x].endswith('_B'):
                f.write(f'const double {arr_name[x]}[{features[x-2]}] = {{\n')
                f.write('    ')
                f.write(', '.join(f'{weights[tensor_name[x]][l]:.10f}' for l in range(features[x-2])))
                f.write('\n};\n\n')
            elif arr_name[x].startswith('LOCAL3') and arr_name[x].endswith('_W'):
                f.write(f'const double {arr_name[x]}[180][10] = {{\n')
                for i in range(180):
                    f.write('    {')
                    f.write(', '.join(f'{weights[tensor_name[x]][i][l]:.10f}' for l in range(10)))
                    f.write('},\n')
                f.write('};\n\n')
            elif arr_name[x].startswith('LOCAL3') and arr_name[x].endswith('_B'):
                f.write(f'const double {arr_name[x]}[10] = {{\n')
                f.write('    ')
                f.write(', '.join(f'{weights[tensor_name[x]][l]:.10f}' for l in range(10)))
                f.write('\n};\n\n')

        f.write('#endif // COEFFS_DOUBLE_H_\n')