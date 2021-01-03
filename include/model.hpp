#ifndef _MODEL_H_
#define _MODEL_H_
#include "mesh.hpp"
#include "shader.hpp"
#include "assimp/Importer.hpp"
#include "assimp/scene.h"
#include "assimp/postprocess.h"
#include <vector>
#include <string>
#include "glm/glm.hpp"
#endif /* _MODEL_H_ */

//TODO: Load the model from .obj file
class Model
{
    public:
        std::vector<Texture> textures_loaded;
        std::vector <Mesh> meshes;
        std::string dir;
        Model(const char *path)
        {
            loadModel(path);
        }
        void Draw(Shader &shader);
    private:

        void loadModel(std::string path);
        void processNode(aiNode *node,
                const aiScene *scene);
        Mesh processMesh(aiMesh *mesh,
                const aiScene *scene);
        std::vector<Texture> loadMaterial(aiMaterial *mat, aiTextureType type, std::string typeName);
        unsigned int TextureFromFile(const char *path, const std::string &dir, bool gamma);
};
