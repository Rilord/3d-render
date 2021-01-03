cmake_minimum_required(VERSION 3.0)

project(3d_renderer VERSION 0.1 LANGUAGES CXX)
set (CMAKE_CXX_STANDARD 11)

include_directories(${CMAKE_SOURCE_DIR}/include)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")

set(3d_renderer_EXE_NAME "3d")
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
    set (3d_renderer_LIBS ${3d_renderer_LIBS} ${SDL2_LIBRARIES})
endif ()

##########

# OpenGL

find_package(OpenGL REQUIRED)

if (OPENGL_FOUND)
    include_directories(${OPENGL_INCLUDE_DIR})
endif()


##########

# GLM 

include("${CMAKE_SOURCE_DIR}/cmake/Modules/FindGLM.cmake")
find_package(glm REQUIRED)
if (GLM_FOUND)
    include_directories(${GLM_INCLUDE_DIRS})
    target_link_libraries(${3d_renderer_EXE_NAME} GLM)
else()
    set(3d_renderer_INCLUDES ${3d_renderer_INCLUDES}
        ${CMAKE_SOURCE_DIR}/external/glm
        )
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
    ${CMAKE_SOURCE_DIR}/external/imgui
    )
set(3d_renderer_LIBS ${3d_renderer_LIBS} imgui)
##########

# GLEW


#set (GLEW_SRCS ${CMAKE_SOURCE_DIR}/external/glew/src/glew.c)
#
#add_library(glew STATIC ${GLEW_SRCS})
#
#target_include_directories(glew PUBLIC ${CMAKE_SOURCE_DIR}/external/glew/include)
#target_compile_definitions(glew PUBLIC -DGLEW_STATIC)
#
#set (3d_renderer_INCLUDES ${3d_renderer_INCLUDES} ${CMAKE_SOURCE_DIR}/external/glew)
#
#set (3d_renderer_LIBS ${3d_renderer_LIBS} glew)

find_package(GLEW REQUIRED)
if (GLEW_FOUND)
    set (3d_renderer_INCLUDES ${3d_renderer_INCLUDES} ${GLEW_INCLUDE_DIRS})
    set (3d_renderer_LIBS ${3d_renderer_LIBS} ${GLEW_LIBRARIES})
endif()



##########

# ASSIMP

include("${CMAKE_SOURCE_DIR}/cmake/Modules/FindAssimp.cmake")

find_package(ASSIMP REQUIRED)
if (ASSIMP_FOUND)
    message("Found assimp in your system")
    include_directories(${ASSIMP_INCLUDE_DIRS})
    set (3d_renderer_LIBS ${3d_renderer_LIBS} ${ASSIMP_LIBRARIES}) 
else()
    message("Couldn't find assimp in your system. Starting a Build.")
    add_subdirectory("${CMAKE_SOURCE_DIR}/external/assimp")
    if (APPLE)
        set (3d_renderer_LIBS ${3d_renderer_LIBS} "/usr/local/lib/libassimp.5.0.0.dylib") 
    endif()
endif ()

##########

# STB 

set(3d_renderer_INCLUDES ${3d_renderer_INCLUDES}
    ${CMAKE_SOURCE_DIR}/external/stb
    )


###########

# 3D RENDERER


file (GLOB 3d_renderer_SRCS
    ${CMAKE_SOURCE_DIR}/src/*.cpp
    )

set(3d_renderer_INCLUDES ${CMAKE_SOURCE_DIR}/include ${3d_renderer_INCLUDES})

###########

# executable

set(3d_renderer_LIBS ${3d_renderer_LIBS} ${OPENGL_LIBRARY} ${GLEW_LIBRARY})
message("SOURCES\n" ${3d_renderer_SRCS} "\nINCLUDES\n"${3d_renderer_INCLUDES} "\nEXE\n"${3d_renderer_EXE_NAME} "\nLIBS\n" ${3d_renderer_LIBS})

add_executable(${3d_renderer_EXE_NAME}  ${3d_renderer_SRCS})

target_include_directories(${3d_renderer_EXE_NAME} PUBLIC ${3d_renderer_INCLUDES})


target_link_libraries(${3d_renderer_EXE_NAME} ${3d_renderer_LIBS})

endif ()
