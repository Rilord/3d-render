#include "window.hpp"
#include <iostream>

Window::Window(int width, int height, const std::string title) {
    SDL_Init(SDL_INIT_EVERYTHING);

    window = SDL_CreateWindow(title.c_str(), 
            SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 
            width, height, SDL_WINDOW_OPENGL);
    glContext = SDL_GL_CreateContext(window);

    GLenum status = glewInit();

    if (status != GLEW_OK) {
        std::cerr << "Glew error occured!" << '\n';
    }

    _isClosed = false;

    glEnable(GL_DEPTH_TEST);

}

Window::~Window() {
    SDL_GL_DeleteContext(glContext);
    SDL_DestroyWindow(window);
    SDL_Quit();
}

void Window::Clear(float r, float g, float b, float a) {
    glClearColor(r, g, b, a);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

bool Window::isClosed() {
    return _isClosed;
}

void Window::Update() {
    SDL_GL_SwapWindow(window);
    
    SDL_Event e;

    while (SDL_PollEvent(&e)) {
        switch (e.type) {
            case SDL_QUIT:
                _isClosed = true;
                break;

            case SDL_KEYDOWN:
                _isClosed = (e.key.keysym.sym == SDLK_ESCAPE);
                break;

            default:
                break;
        }
    }
}
