cmake_minimum_required(VERSION 3.0)
project(SnowSimulator)

include_directories(include)

aux_source_directory(src SOURCE)
add_executable(SnowSimulator ${SOURCE})

# OpenGL
find_package(OpenGL REQUIRED)

# GLAD
add_subdirectory(lib/glad)

# GLFW
find_package(glfw3 REQUIRED)

set(CMAKE_CXX_LINK_EXECUTABLE "${CMAKE_CXX_LINK_EXECUTABLE} -ldl")
target_link_libraries(SnowSimulator
        glad
        glfw
)
