cmake_minimum_required(VERSION 3.9.1)

project(DisplayImage VERSION 1.0.0)

find_package(
    OpenCV
        REQUIRED
        PATHS
            "C:\\OpenCV\\build"
)

add_executable(DisplayImage main.cpp)

target_include_directories(DisplayImage PRIVATE ${OpenCV_INCLUDE_DIRS})
target_link_libraries(DisplayImage PRIVATE ${OpenCV_LIBS})

message("OpenCV Include Directories: ${OpenCV_INCLUDE_DIRS}")
message("OpenCV Libraries: ${OpenCV_LIBS}")
