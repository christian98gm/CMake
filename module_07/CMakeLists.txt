# Base project
cmake_minimum_required(VERSION 3.5)

project(Calculator VERSION 1.0.0)

add_subdirectory(ConsoleLib)
add_subdirectory(MathLib)

add_executable(Calculator main.cpp)

target_link_libraries(Calculator PRIVATE ConsoleLib MathLib)

# Install prefix path
message(${CMAKE_INSTALL_PREFIX})

# To install (as admin): cmake --install . (from Build\)
