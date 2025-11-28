# System-On-Chip (SoC) Integration Project

The main objective of this project is to design and implement a complete hardware (HW) and software (SW) processing system to execute a Convolutional Neural Network (CNN). The final deliverable is a functional implementation on a Xilinx FPGA board (Zybo Z7) that integrates a live camera feed for input and an on-screen display for the output.

## Architecture

```
Input: 24×24×3 RGB image
  ↓
Conv1 (3×3, 64 filters) + ReLU → 24×24×64
  ↓
MaxPool (3×3, stride 2) → 12×12×64
  ↓
Conv2 (3×3, 32 filters) + ReLU → 12×12×32
  ↓
MaxPool (3×3, stride 2) → 6×6×32
  ↓
Conv3 (3×3, 20 filters) + ReLU → 6×6×20
  ↓
MaxPool (3×3, stride 2) → 3×3×20
  ↓
Flatten → 180 features
  ↓
Fully Connected (180x10)
  ↓
Softmax → 10 class probabilities
```

## Quick Setup

1. Download CIFAR-10 (Python and binary version):
```bash
```bash
wget -P dataset https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz https://www.cs.toronto.edu/~kriz/cifar-10-binary.tar.gz

tar -xzvf dataset/cifar-10-python.tar.gz -C dataset
tar -xzvf dataset/cifar-10-binary.tar.gz -C dataset

rm dataset/cifar-10-python.tar.gz dataset/cifar-10-binary.tar.gz
```
2. Install Python dependencies:

```bash
pip install -r requirements.txt
```
3. Source the environment setup script for EDA tools:

```bash
source config/bash_mentor_24
```

## Quick Start

### Build and Run

```bash
make clean && make

./bin/cnn_ref "dataset/cifar-10-batches-bin/test_batch.bin" 1000
```

or for fixed-point implementation:

```bash
./bin/cnn_fixed "dataset/cifar-10-batches-bin/test_batch.bin" 1000
```

## The CIFAR-10 Dataset

**Source:** [https://www.cs.toronto.edu/~kriz/cifar.html](https://www.cs.toronto.edu/~kriz/cifar.html)

60,000 32×32 color images in 10 classes (6,000 per class):
- Airplane, Automobile, Bird, Cat, Deer
- Dog, Frog, Horse, Ship, Truck

## Project Timeline

- **Phase 1** : Python functional model implementation
- **Phase 2** : C++ conversion and HLS exploration
- **Phase 3** : FPGA integration and optimization

## Authors

**KAKOU Serges-Williams**  
Email: [serges-williams.kakou@grenoble-inp.org](mailto:serges-williams.kakou@grenoble-inp.org)

**LUKMAN HAKIM Muhammad Ammar**  
Email: [muhammad-ammar.lukman-hakim@grenoble-inp.org](mailto:muhammad-ammar.lukman-hakim@grenoble-inp.org)
