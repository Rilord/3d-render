#include <string>
#include <iostream>
#include <fstream>
#include <vector>


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
