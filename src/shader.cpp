#include "shader.hpp"
#include <iostream>
#include <fstream>
#include <vector>
#include <chrono>
#include "loader.hpp"

static void CheckShaderError(GLuint shader, GLuint flag, bool isProgram, const std::string &errMsg);
static GLuint LoadShaderProgram(const std::string &Path, GLenum shaderType);
static void Compile(GLuint shader, const char *src);
static void Link(GLuint program, GLuint fShader, GLuint vShader);


Shader::Shader(const std::string &shaderName) { 
/* 
    Shader program consists of %name%.fs and %name%.vs 
    files.
*/
    
    program = glCreateProgram();

    vertShader = LoadShaderProgram(shaderName + ".vs", 
            GL_VERTEX_SHADER);
    fragShader = LoadShaderProgram(shaderName + ".fs", 
            GL_FRAGMENT_SHADER);


    Link(program, fragShader, vertShader);

    CheckShaderError(program, GL_LINK_STATUS, 
            true, "Error: Program linking failure: ");
    glValidateProgram(program);


    CheckShaderError(program, GL_VALIDATE_STATUS, 
            true, "Error: Program is not valid: ");

    GLtime =  glGetUniformLocation(program, "time");
}
/* 
   Load Shader Program to Object with pathname
*/

Shader::~Shader() {
    
    glDetachShader(program, fragShader);
    glDeleteShader(fragShader);

    glDetachShader(program, vertShader);
    glDeleteShader(vertShader);
}

void Shader::drawFrag(float counter) {
    glDrawArrays(GL_QUADS, 0, 4);
    glUniform1f(GLtime, counter);
}

void Shader::SetupFrag() {
    const GLfloat pos[12] = { 
        -1.0, 1.0, 0.0,
        1.0, 1.0, 0.0,
        1.0, -1.0, 0.0, 
        -1.0, -1.0, 0.0
    };

    glGenBuffers(1, &buf);
    glBindBuffer(GL_ARRAY_BUFFER, buf);
    glBufferData(GL_ARRAY_BUFFER, 12 * sizeof(float), pos, GL_DYNAMIC_DRAW);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, NULL);
    
}

static GLuint LoadShaderProgram(const std::string &Path, 
        GLenum shaderType) {

    std::cout << " Shader's name: " << Path << '\n';
    GLuint shader = glCreateShader(shaderType);

    if (!shader)
        std::cerr << "Error: Shader Creation Failed." << '\n';
    std::string ShaderStr = readFile(Path);
    const char *ShaderSrc = ShaderStr.c_str();

    Compile(shader, ShaderSrc);

    CheckShaderError(shader, GL_COMPILE_STATUS, 
            false, "Error: Shader compilation failure: ");

    std::cout << "Creating of shader is completed." << '\n';

    return shader;

}

static void Compile(GLuint shader, const char *src) {

    std::cout << "Compiling shader." << '\n';
    glShaderSource(shader, 1, &src, NULL);
    glCompileShader(shader);

}

static void CheckShaderError(GLuint shader, GLuint flag, bool isProgram, const std::string &errMsg) {

    GLint result = 0;
    GLchar error[1024] = { 0 };

    if (isProgram)
        glGetProgramiv(shader, flag, &result);
    else
        glGetShaderiv(shader, flag, &result);

    if (result == GL_FALSE) {

        if (isProgram)
            glGetProgramInfoLog(shader, sizeof(error), 
                    NULL, error);
        else
            glGetShaderInfoLog(shader, sizeof(error), 
                    NULL, error);

        std::cerr << errMsg << ": '" << error << "'" << '\n';
    }
}

static void Link(GLuint program, GLuint fShader, GLuint vShader) {
    std::cout << "Linking program" << '\n';

    glAttachShader(program, vShader);
    glAttachShader(program, fShader);
    glLinkProgram(program);


    std::cout << "Linking was successfull." << '\n';
}

void Shader::Bind() {
    glUseProgram(program);
}
