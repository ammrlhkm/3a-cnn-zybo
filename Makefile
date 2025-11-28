# Compiler and flags
CXX = g++
# Flags communs
COMMON_FLAGS = -std=c++11 -Wall -Wextra
INCLUDES = -I./include
LDFLAGS =

# Flags spécifiques (Optionnel : si vous voulez que USE_AC_FIXED ne soit que pour la version fixed)
# Si c'est pour les deux, mettez-le dans COMMON_FLAGS
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

# Object files lists
# Note: cifar10_loader est utilisé dans les deux, mais attention :
# s'il dépend de USE_AC_FIXED, il faudrait le compiler deux fois séparément.
# Ici, on assume qu'il est compilé avec les flags globaux ou ceux de la dernière règle appelée.
OBJS_REF = $(BUILD_DIR)/cifar10_loader.o $(BUILD_DIR)/cnn_ref.o $(BUILD_DIR)/cnn_testbench.o
OBJS_FIXED = $(BUILD_DIR)/cifar10_loader.o $(BUILD_DIR)/cnn_fixed.o $(BUILD_DIR)/cnn_testbench_fixed.o

# Default target: build both
all: directories $(TARGET_REF) $(TARGET_FIXED)

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

# Compile Generic Rule
# Attention : Cette règle utilise CXXFLAGS_FIXED par défaut si on ne spécifie pas.
# Pour faire propre, on utilise souvent des target-specific variables, mais restons simple :
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS_FIXED) $(INCLUDES) -c $< -o $@

# Clean build files
clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR)
	@echo "Clean complete"

# Rebuild
rebuild: clean all

.PHONY: all clean rebuild directories
