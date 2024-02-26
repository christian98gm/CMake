project(MathLib VERSION 1.0.0)

add_library(MathLib
    src/adder.cpp
    src/divider.cpp)

target_include_directories(MathLib PUBLIC include)

# Common used cache variables
message(-------------------------------------------------------------)

message("MathLib level CMakeLists")

message(CMAKE_PROJECT_NAME  = ${CMAKE_PROJECT_NAME})
message(PROJECT_NAME        = ${PROJECT_NAME})
