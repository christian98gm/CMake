cmake_minimum_required(VERSION 3.5)

project(GTK_PC VERSION 1.0.0)

# PKG_CONFIG_PATH ENV variable is another way to locate the package
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} "C:\\gtk-build\\gtk\\x64\\release")

find_package(
    PkgConfig
        REQUIRED
)
pkg_check_modules(
    GTK3
        REQUIRED
            gtk+-3.0
)

add_executable(${PROJECT_NAME}_app main.cpp)

target_include_directories(${PROJECT_NAME}_app PRIVATE ${GTK3_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME}_app PRIVATE ${GTK3_LINK_LIBRARIES})

message("GTK3 Include Directories: ${GTK3_INCLUDE_DIRS}")
message("GTK3 Libraries: ${GTK3_LINK_LIBRARIES}")
