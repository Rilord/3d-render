#ifndef __WINDOW_HPP__
#define __WINDOW_HPP__
#include "SDL2/SDL.h"
#include <string>
#include <GL/glew.h>
#include "camera.hpp"

typedef struct mouse_pos {
    int current_x, current_y;
} mouse_pos_t;

class Window {
    public:
        float dt = 0.0f;
        float lastFrame = 0.0f;
        
        mouse_pos_t mouse = { 0, 0 };

        Window(int width, int height, const std::string title);

        void Clear(float r, float g, float b, float a);

        void Update(Camera *cam);

        bool isClosed();

        virtual ~Window();
    protected: private:

        SDL_Window* window;
        SDL_GLContext glContext;
        bool _isClosed;
};
#endif /* _WINDOW_HPP_ */
