project(ConsoleLib VERSION 1.0.0)

add_library(ConsoleLib
    src/printer.cpp
    src/reader.cpp)

target_include_directories(ConsoleLib PUBLIC include)

# Common used cache variables
message(-------------------------------------------------------------)

message("ConsoleLib level CMakeLists")

message(CMAKE_PROJECT_NAME  = ${CMAKE_PROJECT_NAME})
message(PROJECT_NAME        = ${PROJECT_NAME})
