#version 330 core
out vec3 fragmentColor;
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 vertexColor;

void main() {
    fragmentColor = vertexColor;
}
