cmake_minimum_required (VERSION 3.0)

project(lesson-02)

add_subdirectory (pgr-framework)

add_executable(${PROJECT_NAME} shaders-simple.cpp)

target_link_libraries(${PROJECT_NAME} pgr)
