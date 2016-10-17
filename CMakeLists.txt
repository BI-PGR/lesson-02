cmake_minimum_required (VERSION 3.0)

project(lesson-02)

# Find pgr-framework
string(ASCII 27 Esc)
set(RED "${Esc}[31;1m")
set(RST "${Esc}[m")

if(NOT EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/../pgr-framework")
  message(FATAL_ERROR
  "${RED}Failed to find pgr-framework${RST}, fetch the repo using\n"
  "\tgit clone https://github.com/bi-pgr/pgr-framework\n"
  "next to the folder containing this project.")
endif()

add_subdirectory(
  "${CMAKE_CURRENT_SOURCE_DIR}/../pgr-framework"
  "pgr-framework"
)

# Silence deprecated GLUT functions
if(APPLE)
  add_definitions(-Wno-deprecated)
endif()

# Set up targets
add_executable(${PROJECT_NAME} shaders-simple.cpp)

target_link_libraries(${PROJECT_NAME} pgr)

# Copy shaders
add_custom_target(
  copy_shaders
  ${CMAKE_COMMAND} -E copy_directory
    ${CMAKE_CURRENT_SOURCE_DIR}/shd
    ${CMAKE_CURRENT_BINARY_DIR}/shd
  COMMENT "Copying Shaders" VERBATIM
)

add_dependencies(${PROJECT_NAME} copy_shaders)
