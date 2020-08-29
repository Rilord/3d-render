#pragma once

#include <SDL2/SDL.h>

#include <string>
#include <GL/glew.h>

class Window {
    public:
        Window(int width, int height, const std::string title);

        void Clear(float r, float g, float b, float a);

        void Update();

        bool isClosed();

        virtual ~Window();
    protected: private:

        SDL_Window* window;
        SDL_GLContext glContext;
        bool _isClosed;
};
