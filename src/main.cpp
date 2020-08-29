#include <iostream>
#include <GL/glew.h>
#include <SDL2/SDL.h>
#include "window.hpp"
#include "shader.hpp"

#define WIDTH 800
#define HEIGHT 600

int main() {
    
    Window window { 800, 600, "3d" };

    Shader shader("./src/glsl/shader");
    shader.SetupFrag();

    float counter = 0.0f;

    while (!window.isClosed()) {
        window.Clear(0.1f, 0.3f, 0.4f, 1.0f);

        shader.Bind();
        shader.drawFrag(counter);
        window.Update();

        counter += 0.1f;
    }
    return 0;
}
