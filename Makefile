CC := g++
CPPFLAGS := -Wall -Werror  -lm -lGL -lGLEW -lassimp -lSDL2
SRC_DIR := src
SRC := $(wildcard $(SRC_DIR)/*.cpp)
INCLUDE_DIR := include
INCLUDE := $(wildcard $(INCLUDE_DIR)/*.hpp)
OBJ_DIR := obj
OBJECTS := $(patsubst $(SRC_DIR)/%.cpp, $(OBJ_DIR)/%.o, $(SRC))
BUILD_DIR := build
TARGET = 3d

all: $(BUILD_DIR)/$(TARGET)

$(BUILD_DIR)/$(TARGET): $(OBJECTS) $(INCLUDE)
	$(CC) $^ -o $@	$(CPPFLAGS) 

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp  
		$(CC) -c -o $@ $< $(CPPFLAGS)


clean:
	rm -rf $(BUILD_DIR)/$(TARGET)
	rm -rf $(OBJ_DIR)/*
