cmake_minimum_required(VERSION 3.5)
project(Calculator VERSION 1.0.0)

add_subdirectory(math)
add_subdirectory(output)
add_subdirectory(input)

add_executable(calculator main.cpp)

target_link_libraries(calculator PRIVATE MathLib OutputLib InputLib)
