#define STB_IMAGE_IMPLEMENTATION
#include <iostream>
#include "GL/glew.h"
#include "SDL2/SDL.h"
#include "../include/window.hpp"
#include "../include/shader.hpp"
#include "../include/mesh.hpp"
#include "../include/model.hpp"
#include "../include/camera.hpp"

#define WIDTH 800
#define HEIGHT 600

int main() {
    
    stbi_set_flip_vertically_on_load(true);
    Window window { 800, 600, "3d" };

    Camera cam(glm::vec3(0.3f, 0.0f, 3.5f));

    Shader shader("./src/glsl/model");

    Model teapot("./models/teapot.obj");

    float counter = 0.0f;


    while (!window.isClosed()) {
        window.Clear(1., 1., 1., 1.0f);

        shader.Bind();

        glm::mat4 projection = glm::perspective(
            glm::radians(cam.zoom), 
            (float) WIDTH / (float) HEIGHT, 
            0.1f, 100.f);

        glm::mat4 view = cam.GetViewMatrix();

        shader.setMat4("projection", projection);
        shader.setMat4("view", view);

        glm::mat4 model = glm::mat4(1.0f);

        model = glm::translate(model, glm::vec3(0.0f, 0.0f, 0.0f));
        model = glm::scale(model, glm::vec3(1.0f, 1.0f, 1.0f));

        shader.setMat4("model", model);
        teapot.Draw(shader);

        window.Update(&cam);
        counter += 0.1f;
    }
    return 0;
}
