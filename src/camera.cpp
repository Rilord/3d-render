#include "../include/camera.hpp"
#include <iostream>

Camera::Camera(glm::vec3 Pos, 
    glm::vec3 up, 
    float Yaw, float Pitch) : front(glm::vec3(0.0f, 0.0f, -1.0f)), 
        moveSpeed(SPEED), MouseSensetivity(SENSE), zoom(ZOOM)
{
    pos = Pos;
    worldUp = up;
    yaw = Yaw;
    pitch = Pitch;
    updateCameraVecs();
}

glm::mat4 Camera::GetViewMatrix()
{
    return glm::lookAt(pos, pos + front, up);
}

void Camera::processKeyboard(Camera_Movement dir, float dt)
{
    float vel = moveSpeed * dt;
    if (dir == FORWARD)
        pos += front * vel;
    if (dir == BACKWARD)
        pos -= front * vel;
    if (dir == LEFT)
        pos -= right * vel;
    if (dir == RIGHT)
        pos += right * vel;
}
void Camera::updateCameraVecs()
{
    glm::vec3 Front;
    Front.x = cos(glm::radians(yaw)) * cos(glm::radians(pitch));
    Front.y = sin(glm::radians(pitch));
    Front.z = sin(glm::radians(yaw)) * cos(glm::radians(pitch));
    front = glm::normalize(Front);

    right = glm::normalize(glm::cross(front, worldUp));
    up = glm::normalize(glm::cross(right, front));
}

void Camera::processMouse(float offset_x, float offset_y, 
    GLboolean Pitch)
{
    offset_x *= MouseSensetivity;
    offset_y *= MouseSensetivity;

    yaw += offset_x;
    pitch += offset_y;

    if (Pitch)
    {
        if (pitch > 89.f)
            pitch = 89.f;
        if (pitch < -89.f)
            pitch = -89.f;
    }
    updateCameraVecs();
}