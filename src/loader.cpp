#include <string>
#include <iostream>
#include <fstream>
#include <vector>
#include <glm/glm.hpp>


std::string readFile(const std::string &filePath) {
    std::string content;
    std::ifstream fileStream(filePath, std::ios::in);

    if (!fileStream.is_open()) {
        std::cerr << "Failed to read Shader file " 
                << filePath << ". File was not received\n";
        return "";
    }

    std::string line = "";
    while (!fileStream.eof()) {
        std::getline(fileStream, line);
        content.append(line + '\n');
    }

    fileStream.close();
    return content;
}

bool loadModel(
        const char *path,
        std::vector <glm::vec3> &vertices,
        std::vector <glm::vec2> &uv,
        std::vector <glm::vec3> &normals
) 
{

    return true;
}
