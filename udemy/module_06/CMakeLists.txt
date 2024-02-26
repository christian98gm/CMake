# Base project
cmake_minimum_required(VERSION 3.5)

project(Calculator VERSION 1.0.0)

add_subdirectory(ConsoleLib)
add_subdirectory(MathLib)

add_executable(Calculator main.cpp)

target_link_libraries(Calculator PRIVATE ConsoleLib MathLib)

# Cache variable manipulation
message(-------------------------------------------------------------)

set(a "123" CACHE STRING "This command sets variable A in persistent cache")
message($CACHE{a})

# Environment variables
message(-------------------------------------------------------------)

set(ENV{b} "456")
message($ENV{b})

# Modification of cache variables
message(-------------------------------------------------------------)

set(name Alice CACHE STRING "The name variable")
set(name Bob CACHE STRING "The modified name variable") # NOT PROPERLY MODIFIED
message($CACHE{name})

set(name Bob CACHE STRING "The modified name variable" FORCE)
message($CACHE{name})

# In console works too: cmake .. -Dname=Charlie

# Common used cache variables
message(-------------------------------------------------------------)

message("Root level CMakeLists")

message(CMAKE_PROJECT_NAME  = ${CMAKE_PROJECT_NAME})
message(PROJECT_NAME        = ${PROJECT_NAME})

message(CMAKE_VERSION       = ${CMAKE_VERSION})
message(CMAKE_MAJOR_VERSION = ${CMAKE_MAJOR_VERSION})
message(CMAKE_MINOR_VERSION = ${CMAKE_MINOR_VERSION})
message(CMAKE_PATCH_VERSION = ${CMAKE_PATCH_VERSION})

# END OF CONFIG
message(-------------------------------------------------------------)
