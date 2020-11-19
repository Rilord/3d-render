#include "../include/mesh.hpp"
#include <GL/glew.h>
#include <SDL2/SDL.h>
#include <glm/glm.hpp>
#include <iostream>
#include <string>


Mesh::Mesh(
                std::vector 
                    <Vertex> vertices, 
                std::vector 
                    <unsigned int> indices, 
                std::vector 
                    <Texture> textures
            )
{
    this->vertices = vertices;
    this->indices = indices;
    this->textures = textures;

    setupMesh();
}

void Mesh::setupMesh()
{
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    glBindVertexArray(VAO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);

    glBufferData(GL_ARRAY_BUFFER, 
            vertices.size() * sizeof(Vertex),
            &vertices[0], GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, 
            indices.size() * sizeof(unsigned int),
            &indices[0], GL_STATIC_DRAW);

    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 
            sizeof(Vertex), (void *) 0);

    glEnableVertexAttribArray(1);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 
            sizeof(Vertex), (void *) offsetof(Vertex, n));

    glEnableVertexAttribArray(2);
    glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, 
            sizeof(Vertex), (void *) offsetof(Vertex, tex));

    glBindVertexArray(0);
}

void Mesh::Draw(Shader &shader)
{
    std::string number;
    std::string name;
    unsigned int n_diffuse = 1;
    unsigned int n_specular = 1;

    for (unsigned int i = 0; i < textures.size(); i++)
    {
        glActiveTexture(GL_TEXTURE0 + i);

        name = textures[i].type;

        if (name == TEXTURE_DIFFUSE)
        {
            number = std::to_string(n_diffuse++);
        }
        else if (name == TEXTURE_SPECULAR)
        {
            number = std::to_string(n_specular++);
        }

        shader.setFloat(("material." + name + number).c_str(), i);
        glBindTexture(GL_TEXTURE_2D, textures[i].id);
    }
    glActiveTexture(VAO);

    glBindVertexArray(VAO);
    glDrawElements(GL_TRIANGLES, 
            indices.size(), GL_UNSIGNED_INT, 0);
    glBindVertexArray(0);
}
