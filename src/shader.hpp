/* Shader Program Defines and Loaders*/
#pragma once

#include <string>
#include <GL/glew.h>

class Shader {
    
    public:
        Shader(const std::string &filename); /* get filename(probably path?) for our shader*/
        void Bind();
        void Update(float counter);
        void SetupFrag();
        void drawFrag(float counter);
        virtual ~Shader();
    private:
        GLuint buf;
        GLuint program;
        GLuint vertShader;
        GLuint fragShader;
        GLuint GLtime;
        GLuint Resolution;

};

