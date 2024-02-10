cmake_minimum_required(VERSION 3.5)
project(Calculator VERSION 1.0.0)

add_library(MathLib adder.cpp divider.cpp)
add_library(OutputLib console_printer.cpp)
add_library(InputLib console_reader.cpp)

add_executable(calculator main.cpp)

target_link_libraries(calculator PRIVATE MathLib OutputLib InputLib)
