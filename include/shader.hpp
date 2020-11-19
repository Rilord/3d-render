#ifndef _SHADER_HPP_
#define _SHADER_HPP_
#include <string>
#include <GL/glew.h>
#include <glm/glm.hpp>

class Shader {
    
    public:
        Shader(const std::string &filename); /* get filename(probably path?) for our shader*/
        void Bind();
        void Update(float counter);
        void SetupFrag();
        void drawFrag(float counter);

        void setFloat(
            const std::string &name, 
            float value);

        void setBool(
            const std::string &name, 
            bool value);

        void setInt(
            const std::string &name, 
            int value);

        void setVec2(const std::string &name, 
            const glm::vec2 &value);

        void setVec3(const std::string &name, 
            const glm::vec3 &value);

        void setVec4(const std::string &name, 
            const glm::vec4 &value);

        void setMat2(const std::string &name, 
            const glm::mat2 &mat);

        void setMat3(const std::string &name, 
            const glm::mat3 &mat);

        void setMat4(const std::string &name, 
            const glm::mat4 &mat);

        virtual ~Shader();
    private:
        GLuint buf;
        GLuint program;
        GLuint vertShader;
        GLuint fragShader;
        GLuint GLtime;
        GLuint Resolution;

};
#endif /* _SHADER_HPP_ */
