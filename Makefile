CC=g++
SRC_DIR := src
SRC_LIST = src/loader.cpp src/window.cpp src/shader.cpp
all: frag

frag: 
	g++ $(SRC_DIR)/main.cpp -I  $(SRC_DIR) $(SRC_LIST) -o 3drenderer -lGL -lSDL2 -lGLEW
