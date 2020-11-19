
#ifndef __CAMERA_H__
#define __CAMERA_H__
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <vector>
#include <GL/gl.h>

enum Camera_Movement {
    FORWARD,
    BACKWARD, 
    LEFT, 
    RIGHT
};

const float YAW = -90.f;
const float PITCH = .0f;
const float SPEED = 2.4f;
const float SENSE = .1f;
const float ZOOM = 45.f;

class Camera
{
    public:
        Camera(glm::vec3 Pos = glm::vec3(.0f, .0f, .0f), 
            glm::vec3 up = glm::vec3(.0f, 1.f, .0f), 
            float Yaw = YAW, float Pitch = PITCH);
        glm::vec3 pos;
        glm::vec3 front;
        glm::vec3 up;
        glm::vec3 right;
        glm::vec3 worldUp;

        float yaw;
        float pitch;

        float moveSpeed;
        float MouseSensetivity;
        float zoom;


        glm::mat4 GetViewMatrix();

        void processKeyboard(Camera_Movement dir, float dt);

        void processMouse(float offset_x, float offset_y, GLboolean Pitch = true);

    private:
        void updateCameraVecs();
};
#endif