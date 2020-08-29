#pragma once

#include <glm/glm.hpp>
#include <GL/glew.h>
#include <string>

class Vertex {
    public:
        Vertex(const glm::vec3 &pos, 
                const glm::vec2 &texCoord,
                const glm::vec3 &normal = glm::vec3(0, 0, 0)) {
            this->pos = pos;
            this->texCoord = texCoord;
            this->normal = normal;
        }
    protected: private :
        glm::vec3 pos;
        glm::vec2 texCoord;
        glm::vec3 normal;
}
