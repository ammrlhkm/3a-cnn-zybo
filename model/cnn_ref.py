import numpy as np
import matplotlib.pyplot as plt
import pickle
import time
import re

def load_pickle(file):
    """Load a CIFAR-10 batch file using pickle."""
    import pickle
    with open(file, 'rb') as fo:
        data = pickle.load(fo, encoding='bytes')
    return data


def normalize_img(img):
    """Normalize a 24x24x3 image using mean and standard deviation."""
    mean = 0.0
    N = 24 * 24 * 3
    
    for i in range(24):
        for j in range(24):
            for c in range(3):
                mean += float(img[i][j][c])
    mean /= N

    std_dev = 0.0
    for i in range(24):
        for j in range(24):
            for c in range(3):
                std_dev += (float(img[i][j][c]) - mean)**2
    std_dev = np.sqrt(std_dev / N)

    return (img - mean) / max(std_dev, 1 / np.sqrt(N))


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


def conv2d_relu(img, kernel, bias):
    """
    Apply a convolution with SAME padding followed by ReLU.
    """
    H, W, C_in = img.shape
    kernel_size, _, _, C_out = kernel.shape
    pad_size = kernel_size // 2
    
    padded_img = np.pad(img,
                        pad_width=((pad_size, pad_size),
                                   (pad_size, pad_size),
                                   (0, 0)),
                        mode='constant',
                        constant_values=0)
    
    output = np.zeros((H, W, C_out), dtype=np.float32)
    
    for f in range(C_out):
        for i in range(kernel_size):
            for j in range(kernel_size):
                for c in range(C_in):
                    output[:, :, f] += padded_img[i:i+H, j:j+W, c] * kernel[i, j, c, f]
        
        output[:, :, f] = np.maximum(0, output[:, :, f] + bias[f])
    
    return output


def maxpool2d(img, pool_size=3, stride=2):
    """
    Apply 2D max pooling with a given window and stride.
    """
    H, W, C = img.shape
    out_h = int(np.ceil((H - pool_size) / stride)) + 1
    out_w = int(np.ceil((W - pool_size) / stride)) + 1
    
    output = np.zeros((out_h, out_w, C), dtype=np.float32)
    
    for c in range(C):
        for i in range(out_h):
            for j in range(out_w):
                h_start = i * stride
                w_start = j * stride
                output[i, j, c] = np.max(img[h_start:h_start+pool_size,
                                            w_start:w_start+pool_size, c])
    
    return output


def flatten(img):
    """Flatten a 3D array (HxWxC) into a 1D vector."""
    return img.flatten().astype(np.float32)


def dense_layer(x, weight, bias):
    """Fully connected layer: Wᵀx + b."""
    return np.dot(x, weight) + bias


def softmax_activation(logits):
    """Compute softmax probabilities."""
    shifted = logits - np.max(logits)
    exp_vals = np.exp(shifted)
    return exp_vals / np.sum(exp_vals)


def preprocess_cifar_image(flat_img):
    """Reshape, crop, and normalize a CIFAR-10 image."""
    img = flat_img.reshape(3, 32, 32).transpose(1, 2, 0)
    img = img[4:28, 4:28, :]
    return normalize_img(img)


def forward_pass(img, tensors):
    """Run the CNN forward pass and return probabilities."""
    o1 = conv2d_relu(img, tensors['conv1/weights'], tensors['conv1/biases'])
    p1 = maxpool2d(o1)
    o2 = conv2d_relu(p1, tensors['conv2/weights'], tensors['conv2/biases'])
    p2 = maxpool2d(o2)
    o3 = conv2d_relu(p2, tensors['conv3/weights'], tensors['conv3/biases'])
    p3 = maxpool2d(o3)
    vec = flatten(p3)
    logits = dense_layer(vec, tensors['local3/weights'], tensors['local3/biases'])
    return softmax_activation(logits)


def run_cnn_benchmark(tensors, kernel_label, data, n_samples=1000, progress_every=100, collect_predictions=False):
    """Benchmark a kernel size on n_samples images and collect stats.
    
    If collect_predictions=True, also returns y_true and y_pred arrays for confusion matrix.
    """
    accuracy_count = 0
    class_correct = np.zeros(10, dtype=int)
    class_total = np.zeros(10, dtype=int)
    per_image_times = []
    
    # Collect predictions if needed for confusion matrix
    y_true = [] if collect_predictions else None
    y_pred = [] if collect_predictions else None
    
    print(f"\nTesting CNN ({kernel_label} kernel) on {n_samples} images...\n")
    start_time = time.time()

    for idx in range(n_samples):
        img = preprocess_cifar_image(data[b'data'][idx])
        t0 = time.time()
        probs = forward_pass(img, tensors)
        per_image_times.append(time.time() - t0)
        predicted_label = int(np.argmax(probs))
        true_label = int(data[b'labels'][idx])
        
        if collect_predictions:
            y_true.append(true_label)
            y_pred.append(predicted_label)
        
        if predicted_label == true_label:
            accuracy_count += 1
            class_correct[true_label] += 1
        class_total[true_label] += 1
        
        if progress_every and (idx + 1) % progress_every == 0:
            elapsed = time.time() - start_time
            avg = elapsed / (idx + 1)
            eta = avg * (n_samples - idx - 1)
            print(f"[{idx+1:5d}/{n_samples}] Accuracy: {accuracy_count/(idx+1)*100:.2f}% | "
                  f"Time: {elapsed:.1f}s | ETA: {eta:.1f}s")
    
    elapsed_total = time.time() - start_time
    per_class_accuracy = np.zeros_like(class_correct, dtype=np.float32)
    non_zero_mask = class_total > 0
    per_class_accuracy[non_zero_mask] = class_correct[non_zero_mask] / class_total[non_zero_mask] * 100
    
    result = {
        'kernel': kernel_label,
        'N': n_samples,
        'accuracy_count': accuracy_count,
        'overall_accuracy': accuracy_count / n_samples * 100,
        'class_correct': class_correct,
        'class_total': class_total,
        'per_class_accuracy': per_class_accuracy,
        'elapsed_total': elapsed_total,
        'avg_time_ms': elapsed_total / n_samples * 1000,
        'per_image_times_ms': np.array(per_image_times) * 1000
    }
    
    if collect_predictions:
        result['y_true'] = np.array(y_true)
        result['y_pred'] = np.array(y_pred)
    
    return result


def print_benchmark_summary(result, class_names=None):
    """Pretty-print the benchmark output for a kernel."""
    print(f"\n{'='*60}")
    print(f"FINAL RESULTS ({result['kernel']} kernel)")
    print(f"{'='*60}")
    print(f"Total images tested: {result['N']}")
    print(f"Correct predictions: {result['accuracy_count']}")
    print(f"Overall Accuracy: {result['overall_accuracy']:.2f}%")
    print(f"Total time: {result['elapsed_total']:.2f}s")
    print(f"Avg time per image: {result['avg_time_ms']:.2f} ms")
    
    print(f"\n{'='*60}")
    print("Per-Class Accuracy")
    print(f"{'='*60}")
    
    if class_names is None:
        class_names = [f'class_{i}' for i in range(len(result['per_class_accuracy']))]
    
    for idx, name in enumerate(class_names):
        total = result['class_total'][idx]
        acc = result['per_class_accuracy'][idx]
        bar = "█" * int(acc / 2) if total else ""
        print(f"{idx}. {name:12s}: {result['class_correct'][idx]:4d}/{total:4d} = {acc:6.2f}% {bar}")

def calculate_confusion_matrix(y_true, y_pred, num_classes=10):
    """
    Compute Confusion Matrix C where C[i, j] is the number of observations
    known to be in group i and predicted to be in group j.
    """
    cm = np.zeros((num_classes, num_classes), dtype=int)
    for t, p in zip(y_true, y_pred):
        cm[t][p] += 1
    return cm


def calculate_metrics(cm):
    """
    Calculate Precision, Recall, and F1 Score for each class based on CM.
    """
    num_classes = cm.shape[0]
    
    precisions = []
    recalls = []
    f1_scores = []
    
    for i in range(num_classes):
        TP = cm[i, i]
        FP = np.sum(cm[:, i]) - TP
        FN = np.sum(cm[i, :]) - TP
        TN = np.sum(cm) - (TP + FP + FN)
        
        precision = TP / (TP + FP) if (TP + FP) > 0 else 0
        recall = TP / (TP + FN) if (TP + FN) > 0 else 0
        f1 = (2 * precision * recall) / (precision + recall) if (precision + recall) > 0 else 0
        
        precisions.append(precision)
        recalls.append(recall)
        f1_scores.append(f1)
        
    return precisions, recalls, f1_scores


# =============================================================================
# MAIN ENTRY POINT
# =============================================================================
if __name__ == "__main__":
    import argparse
    
    # Parse command-line arguments
    parser = argparse.ArgumentParser(description='CNN CIFAR-10 Benchmark')
    parser.add_argument('--kernel', '-k', type=str, default='3', choices=['3', '5', 'both'],
                        help='Kernel size: 3 (3x3), 5 (5x5), or both (default: 3)')
    parser.add_argument('--num_images', '-n', type=int, default=1000,
                        help='Number of images to test (default: 1000)')
    parser.add_argument('--dataset', '-d', type=str, default='../dataset/cifar-10-batches-py/test_batch',
                        help='Path to CIFAR-10 batch file (default: ../dataset/cifar-10-batches-py/test_batch)')
    parser.add_argument('--weights_3x3', type=str, default='../dataset/CNN_coeff_3x3.txt',
                        help='Path to 3x3 kernel weights file')
    parser.add_argument('--weights_5x5', type=str, default='../dataset/CNN_coeff_5x5.txt',
                        help='Path to 5x5 kernel weights file')
    parser.add_argument('--confusion', '-c', action='store_true',
                        help='Show confusion matrix analysis')
    
    args = parser.parse_args()
    
    # CIFAR-10 class names
    cifar10_classes = [
        'airplane', 'automobile', 'bird', 'cat', 'deer',
        'dog', 'frog', 'horse', 'ship', 'truck'
    ]
    
    # Load dataset
    print(f"Loading dataset from: {args.dataset}")
    test_data = load_pickle(args.dataset)
    
    # Determine which kernels to run
    kernel_configs = {}
    
    if args.kernel == '3' or args.kernel == 'both':
        print(f"Loading 3x3 weights from: {args.weights_3x3}")
        kernel_configs['3x3'] = load_cnn_weights(args.weights_3x3, kernel_size=3)
    
    if args.kernel == '5' or args.kernel == 'both':
        print(f"Loading 5x5 weights from: {args.weights_5x5}")
        kernel_configs['5x5'] = load_cnn_weights(args.weights_5x5, kernel_size=5)
    
    # Limit number of images to available
    N = min(args.num_images, len(test_data[b'data']))
    print(f"\nTesting on {N} images\n")
    
    # Run benchmarks (collect predictions if confusion matrix requested)
    benchmark_results = {}
    
    for kernel_name, tensor_set in kernel_configs.items():
        result = run_cnn_benchmark(tensor_set, kernel_name, test_data, n_samples=N, 
                                   progress_every=100, collect_predictions=args.confusion)
        benchmark_results[kernel_name] = result
        print_benchmark_summary(result, cifar10_classes)
    
    # Print comparison if both kernels were tested
    if len(benchmark_results) > 1:
        print(f"\n{'#'*60}")
        print("Kernel Comparison Summary")
        print(f"{'#'*60}")
        print(f"{'Kernel':<10}{'Accuracy (%)':>15}{'Avg ms/img':>15}{'Total Time (s)':>18}")
        print("-" * 60)
        for kernel_name, result in benchmark_results.items():
            print(f"{kernel_name:<10}{result['overall_accuracy']:>15.2f}{result['avg_time_ms']:>15.2f}{result['elapsed_total']:>18.2f}")
        
        best_kernel = max(benchmark_results.values(), key=lambda x: x['overall_accuracy'])
        print("-" * 60)
        print(f"Best accuracy achieved with the {best_kernel['kernel']} kernel ({best_kernel['overall_accuracy']:.2f}%).")
    
    # Confusion matrix analysis (optional)
    if args.confusion:
        # Use the first (or only) kernel for confusion matrix
        analysis_kernel = list(kernel_configs.keys())[0]
        result_for_analysis = benchmark_results[analysis_kernel]
        
        print(f"\n{'='*60}")
        print(f"Confusion Matrix Analysis ({analysis_kernel} kernel)")
        print(f"{'='*60}")
        
        # Use predictions already collected during benchmark
        y_true = result_for_analysis['y_true']
        y_pred = result_for_analysis['y_pred']
        
        # Compute matrix and metrics
        conf_matrix = calculate_confusion_matrix(y_true, y_pred)
        precisions, recalls, f1s = calculate_metrics(conf_matrix)
        
        # Visualization
        plt.figure(figsize=(8, 6))
        plt.imshow(conf_matrix, interpolation='nearest', cmap=plt.cm.Blues)
        plt.title(f'Confusion Matrix ({analysis_kernel} kernel, N={N})', fontsize=15)
        plt.colorbar()
        tick_marks = np.arange(10)
        plt.xticks(tick_marks, cifar10_classes, rotation=45)
        plt.yticks(tick_marks, cifar10_classes)
        
        thresh = conf_matrix.max() / 2.
        for i in range(conf_matrix.shape[0]):
            for j in range(conf_matrix.shape[1]):
                plt.text(j, i, format(conf_matrix[i, j], 'd'),
                         horizontalalignment="center",
                         color="white" if conf_matrix[i, j] > thresh else "black")
        
        plt.ylabel('True Label', fontsize=12)
        plt.xlabel('Predicted Label', fontsize=12)
        plt.tight_layout()
        plt.show()
        
        # Print classification report
        print(f"\n{'Class':<12} | {'Precision':<10} | {'Recall':<10} | {'F1-Score':<10}")
        print("-" * 50)
        
        for i, class_name in enumerate(cifar10_classes):
            print(f"{class_name:<12} | {precisions[i]:.4f}     | {recalls[i]:.4f}     | {f1s[i]:.4f}")
        
        print("-" * 50)
        print(f"{'Macro Avg':<12} | {np.mean(precisions):.4f}     | {np.mean(recalls):.4f}     | {np.mean(f1s):.4f}")