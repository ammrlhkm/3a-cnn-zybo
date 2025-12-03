# Compiler and flags
CXX = g++
# Flags communs
COMMON_FLAGS = -std=c++11 -Wall -Wextra
INCLUDES = -I./include -I./include/ac_fixed
LDFLAGS =

CXXFLAGS_REF = $(COMMON_FLAGS)
CXXFLAGS_FIXED = $(COMMON_FLAGS)

# Directories
SRC_DIR = src
INCLUDE_DIR = include
BUILD_DIR = build
BIN_DIR = bin

# Executables names
TARGET_REF = $(BIN_DIR)/cnn_ref
TARGET_FIXED = $(BIN_DIR)/cnn_fixed
TARGET_SCVERIFY = $(BIN_DIR)/cnn_scverify

OBJS_REF = $(BUILD_DIR)/cifar10_loader.o $(BUILD_DIR)/preprocess_image.o $(BUILD_DIR)/cnn_ref.o $(BUILD_DIR)/cnn_ref_bench.o
OBJS_FIXED = $(BUILD_DIR)/cifar10_loader.o $(BUILD_DIR)/preprocess_image.o $(BUILD_DIR)/cnn_fixed.o $(BUILD_DIR)/cnn_fixed_bench.o
OBJS_SCVERIFY = $(BUILD_DIR)/cifar10_loader.o $(BUILD_DIR)/preprocess_image.o $(BUILD_DIR)/cnn_ref.o $(BUILD_DIR)/cnn_fixed.o $(BUILD_DIR)/cnn_scverify_bench.o

# Default target: build both
all: directories $(TARGET_REF) $(TARGET_FIXED) $(TARGET_SCVERIFY)

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

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS_FIXED) $(INCLUDES) -c $< -o $@

# Clean build files
clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR)
	@echo "Clean complete"

clean-hls:
	rm -rf hls
	mkdir hls
	@echo "HLS Clean complete"

# Rebuild
rebuild: clean all

.PHONY: all clean rebuild directories
