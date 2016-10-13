cmake_minimum_required (VERSION 3.0)

project(lesson-02)

add_subdirectory (pgr-framework)

add_executable(${PROJECT_NAME} shaders-simple.cpp)

target_link_libraries(${PROJECT_NAME} pgr)

# Copy shaders
add_custom_target(
  copy_shaders
  ${CMAKE_COMMAND}
  -E copy_directory
       ${CMAKE_CURRENT_SOURCE_DIR}/shd
       ${CMAKE_CURRENT_BINARY_DIR}/shd
  COMMENT "Copying Shaders" VERBATIM
)
