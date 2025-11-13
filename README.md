# System-On-Chip (SoC) Integration Project

The main objective of this project is to design and implement a complete hardware (HW) and software (SW) processing system to execute a Convolutional Neural Network (CNN). The final deliverable is a functional implementation on a Xilinx FPGA board (Zybo Z7) that integrates a live camera feed for input and an on-screen display for the output.

## Quick Setup

1. Download the dataset [here](https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz). Extract the dataset:

```bash
tar -xzvf cifar-10-python.tar.gz -C dataset
```

2. Set up Python environment (optional but recommended):

```bash
# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate
```

3. Install Python dependencies:

```bash
pip install -r requirements.txt
```


3. Source the environment setup script for EDA tools:

```bash
source config/bash_mentor_24
```

## The CIFAR-10 Dataset

**Source:** [https://www.cs.toronto.edu/~kriz/cifar.html](https://www.cs.toronto.edu/~kriz/cifar.html)

The CIFAR-10 dataset consists of 60,000 32x32 colour images in 10 classes, with 6,000 images per class. There are 50,000 training images and 10,000 test images.

The 10 classes in the dataset are:
- Airplane
- Automobile
- Bird
- Cat
- Deer
- Dog
- Frog
- Horse
- Ship
- Truck

## Project Timeline

- **Phase 1** : Python functional model implementation
- **Phase 2** : C++ conversion and HLS exploration
- **Phase 3** : FPGA integration and optimization

## Authors

**KAKOU Serges-Williams**  
Email: [serges-williams.kakou@grenoble-inp.org](mailto:serges-williams.kakou@grenoble-inp.org)

**LUKMAN HAKIM Muhammad Ammar**  
Email: [muhammad-ammar.lukman-hakim@grenoble-inp.org](mailto:muhammad-ammar.lukman-hakim@grenoble-inp.org)