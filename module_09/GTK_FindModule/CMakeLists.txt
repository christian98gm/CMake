cmake_minimum_required(VERSION 3.5)

project(GTK_FindModule VERSION 1.0.0)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/CMake/modules")
find_package(GTK3 REQUIRED)

if(NOT GTK3_FOUND)
    message(FATAL_ERROR "GTK3 not found")
endif()

add_executable(${PROJECT_NAME}_app main.cpp)

message("GTK3_INCLUDE_DIRS      = ${GTK3_INCLUDE_DIRS}")
target_include_directories(${PROJECT_NAME}_app PRIVATE ${GTK3_INCLUDE_DIRS})
message("GTK3_LIBRARIES         = ${GTK3_LIBRARIES}")
target_link_libraries(${PROJECT_NAME}_app PRIVATE ${GTK3_LIBRARIES})
