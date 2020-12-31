cmake_minimum_required(VERSION 3.0)

project(3d_renderer VERSION 0.1 LANGUAGES CXX)

set(PROJECT_SRCS ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(PROJECT_INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}/include)
add_library(stb INTERFACE)


if(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
	message("Good choice, buddy!")
    set(3d_renderer_EXE_NAME 3d_renderer)

endif()
if (UNIX)

##########

# SDL2 
    find_package(SDL2 REQUIRED)

    if (SDL2_FOUND)
        include_directories(${SDL2_INCLUDE_DIRS})
    endif ()

##########

# OpenGL 
set(OpenGL_GL_PREFERENCE LEGACY)

find_package(OpenGL REQUIRED)

if (OPENGL_FOUND)
    include_directories(${OPENGL_INCLUDE_DIRS})
endif ()


##########

# GLM 

find_package(glm REQUIRED)
    if (GLM_FOUND)
        include_directories(${GLM_INCLUDE_PATH})
        target_link_libraries(${3d_renderer_EXE_NAME} GLM)
    endif ()

##########

# IMGUI 
set(imgui_SRCS 
    ${CMAKE_SOURCE_DIR}/external/imgui/imgui.cpp
    ${CMAKE_SOURCE_DIR}/external/imgui/imgui_widgets.cpp
    )

add_library(imgui STATIC ${imgui_SRCS})

target_include_directories(imgui PUBLIC
    ${CMAKE_SOURCE_DIR}/external/imgui/
    )

set(3d_renderer_INCLUDES ${3d_renderer_INCLUDES}
    ${CMAKE_CURRENT_SOURCE_DIR}/external/imgui
    )
set(3d_renderer_LIBS ${3d_renderer_LIBS} imgui)
##########

# GLEW

find_package(GLEW REQUIRED)

if (GLEW_FOUND)
    include_directories(${GLEW_INCLUDE_PATH})
endif()

##########

# STB 

target_include_directories(stb INTERFACE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/external/stb>
        $<INSTALL_INTERFACE:include>)


###########

# 3D RENDERER


file (GLOB 3d_renderer_SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/include/*.h
    )

set(3d_renderer_INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}/include ${3d_renderer_INCLUDES})

###########

# executable

message("SOURCES\n" ${3d_renderer_SRCS} "\nINCLUDES\n"${3d_renderer_INCLUDES})

add_executable(${3d_renderer_EXE_NAME} ${3d_renderer_SRCS} ${3d_renderer_INCLUDES})

target_include_directories(${3d_renderer_EXE_NAME} PUBLIC ${3d_renderer_INCLUDES})

target_link_libraries(${3d_renderer_EXE_NAME} ${3d_renderer_LIBS})

install(TARGETS ${3d_renderer_EXE_NAME} RUNTIME DESTINATION bin)

endif ()
