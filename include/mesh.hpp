#ifndef _MESH_HPP_
#define _MESH_HPP_
#define TEXTURE_DIFFUSE ""
#define TEXTURE_SPECULAR ""
#include <string>
#include "glm/glm.hpp"
#include "glm/gtc/matrix_transform.hpp"
#include "GL/glew.h"
#include "SDL2/SDL.h"
#include <string>
#include <vector>
#include "stb_image.h"
#include "shader.hpp"


typedef struct Vertex {
    glm::vec3 pos;
    glm::vec3 n;
    glm::vec2 tex;
} Vertex;

typedef struct Texture {
    unsigned int id;
    std::string type;
    std::string path;
} Texture;

class Mesh {
    public:

        std::vector <Vertex> vertices;
        std::vector <unsigned int> indices;
        std::vector <Texture> textures;
        
        Mesh(
                std::vector 
                    <Vertex> vertices, 
                std::vector 
                    <unsigned int> indices, 
                std::vector 
                    <Texture> textures
            );
        void Draw(Shader &shader);
    private:

        unsigned int VAO, VBO, EBO;

        void setupMesh();
};

#endif /* _MESH_CPP_ */
