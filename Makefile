# Compiler and flags
CXX = g++
# Flags communs
COMMON_FLAGS = -g -std=c++11 -Wall
INCLUDES = -I./include -I./ac_fixed
LDFLAGS = -lm

CXXFLAGS_REF = $(COMMON_FLAGS)
CXXFLAGS_FIXED = $(COMMON_FLAGS) -O3

# Directories
SRC_DIR = src
INCLUDE_DIR = include
BUILD_DIR = build
BIN_DIR = bin

# Executables names
TARGET_REF = $(BIN_DIR)/cnn_ref
TARGET_FIXED = $(BIN_DIR)/cnn_fixed
TARGET_SCVERIFY = $(BIN_DIR)/cnn_scverify
TARGET_CONV = $(BIN_DIR)/conv_edge_detection
TARGET_FIXED_OPT = $(BIN_DIR)/cnn_fixed_opt

OBJS_REF = $(BUILD_DIR)/cifar10_loader.o $(BUILD_DIR)/preprocess_image.o $(BUILD_DIR)/cnn_ref.o $(BUILD_DIR)/cnn_ref_bench.o
OBJS_FIXED = $(BUILD_DIR)/cifar10_loader.o $(BUILD_DIR)/preprocess_image.o $(BUILD_DIR)/cnn_fixed.o $(BUILD_DIR)/cnn_fixed_bench.o
OBJS_SCVERIFY = $(BUILD_DIR)/cifar10_loader.o $(BUILD_DIR)/preprocess_image.o $(BUILD_DIR)/cnn_ref.o $(BUILD_DIR)/cnn_fixed.o $(BUILD_DIR)/cnn_scverify_bench.o
OBJS_CONV = $(BUILD_DIR)/preprocess_image.o $(BUILD_DIR)/conv_fixed.o $(BUILD_DIR)/conv_scverify_bench.o
OBJS_FIXED_OPT = $(BUILD_DIR)/cifar10_loader.o $(BUILD_DIR)/preprocess_image.o $(BUILD_DIR)/cnn_fixed_opt.o $(BUILD_DIR)/cnn_fixed_opt_bench.o

# Default target: build both
all: directories $(TARGET_REF) $(TARGET_FIXED) $(TARGET_SCVERIFY) $(TARGET_CONV) $(TARGET_FIXED_OPT)

# Create necessary directories
directories:
	@mkdir -p $(BUILD_DIR) $(BIN_DIR)

# Link Rule for Ref
$(TARGET_REF): $(OBJS_REF)
	@echo "Linking Ref..."
	$(CXX) $(OBJS_REF) $(LDFLAGS) -o $@
	@echo "Build complete: $(TARGET_REF)"

# Link Rule for Fixed
$(TARGET_FIXED): $(OBJS_FIXED)
	@echo "Linking Fixed..."
	$(CXX) $(OBJS_FIXED) $(LDFLAGS) -o $@
	@echo "Build complete: $(TARGET_FIXED)"

# Link Rule for SCVerify
$(TARGET_SCVERIFY): $(OBJS_SCVERIFY)
	@echo "Linking SCVerify..."
	$(CXX) $(OBJS_SCVERIFY) $(LDFLAGS) -o $@
	@echo "Build complete: $(TARGET_SCVERIFY)"

# Link Rule for Conv
$(TARGET_CONV): $(OBJS_CONV)
	@echo "Linking Conv..."
	$(CXX) $(OBJS_CONV) $(LDFLAGS) -o $@
	@echo "Build complete: $(TARGET_CONV)"

# Link Rule for Fixed Opt
$(TARGET_FIXED_OPT): $(OBJS_FIXED_OPT)
	@echo "Linking Fixed Opt..."
	$(CXX) $(OBJS_FIXED_OPT) $(LDFLAGS) -o $@
	@echo "Build complete: $(TARGET_FIXED_OPT)"

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS_FIXED) $(INCLUDES) -c $< -o $@

# Clean build files
clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR)
	@echo "Clean complete"

cleanhls:
	@echo "Cleaning HLS generated files, preserving *.tcl scripts..."
	cd hls && find . ! -name '*.tcl' -type f -delete
	cd hls && find . ! -name '*.tcl' -type d -mindepth 1 -exec rm -rf {} + 2>/dev/null || true
	@echo "HLS clean complete"

# Clean all generated files (build + Vivado/HLS outputs)
cleanall: clean cleanhls
	@echo "Cleaning all Vivado/FPGA generated files..."
	find demo/Zynq -type d -name ".Xil" -exec rm -rf {} + 2>/dev/null || true
	find demo/Zynq -type d -name "*.hw" -exec rm -rf {} + 2>/dev/null || true
	find demo/Zynq -type d -name "*.runs" -exec rm -rf {} + 2>/dev/null || true
	find demo/Zynq -type d -name "*.sim" -exec rm -rf {} + 2>/dev/null || true
	find demo/Zynq -type d -name "*.gen" -exec rm -rf {} + 2>/dev/null || true
	find demo/Zynq -type d -name "Vivado-*" -exec rm -rf {} + 2>/dev/null || true
	find demo/Zynq -type d -name "XSCT-*" -exec rm -rf {} + 2>/dev/null || true
	find demo/Zynq -name "*.log" -delete 2>/dev/null || true
	find demo/Zynq -name "*.jou" -delete 2>/dev/null || true
	find demo/Zynq -name "*.str" -delete 2>/dev/null || true
	find demo/Zynq -name "system_wrapper.xsa" -delete 2>/dev/null || true
	find demo/Zynq -name "*.hdf" -delete 2>/dev/null || true
	find demo/Zynq -name "vivado*.backup.*" -delete 2>/dev/null || true
	@echo "Clean all complete"

# Rebuild
rebuild: clean all

.PHONY: all clean clean-hls cleanall rebuild directories
