cmake_minimum_required(VERSION 3.13)
project(SnowSimulator)

add_compile_options(-std=c++14)

add_executable(SnowSimulator main.cpp glad.c Partical.cpp)
target_link_libraries(SnowSimulator glfw3)
