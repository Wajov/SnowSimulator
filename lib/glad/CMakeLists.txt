cmake_minimum_required(VERSION 3.0)
project(glad)

aux_source_directory(src GLAD_SOURCES)
add_library(glad ${GLAD_SOURCES})
