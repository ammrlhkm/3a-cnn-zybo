# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra
INCLUDES = -I./include
LDFLAGS = 

# Directories
SRC_DIR = src
INCLUDE_DIR = include
BUILD_DIR = build
BIN_DIR = bin

# Source files
SOURCES = $(wildcard $(SRC_DIR)/*.cpp)
OBJECTS = $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(SOURCES))

# Target executable
TARGET = $(BIN_DIR)/cnn

# Object files
OBJS = $(BUILD_DIR)/cifar10_loader.o $(BUILD_DIR)/weights_loader.o $(BUILD_DIR)/main.o

# Default target
all: directories $(TARGET)

# Create necessary directories
directories:
	@mkdir -p $(BUILD_DIR) $(BIN_DIR)

# Link program
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) $(LDFLAGS) -o $@
	@echo "Build complete: $(TARGET)"

# Compile
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

# Clean build files
clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR)
	@echo "Clean complete"

# Rebuild
rebuild: clean all

# Run CIFAR batch test (default 10 images)
run: $(TARGET)
	@./$(TARGET) 10

.PHONY: all clean rebuild run directories
