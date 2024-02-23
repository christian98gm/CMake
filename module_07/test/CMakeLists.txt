cmake_minimum_required(VERSION 3.5)

project(TestMathLib VERSION 1.0.0)

message("CMAKE_SYSTEM_PREFIX_PATH = ${CMAKE_SYSTEM_PREFIX_PATH}")
message("CMAKE_MODULE_PATH        = ${CMAKE_MODULE_PATH}")
find_package(
    MathLib
        PATHS
            ${CMAKE_INSTALL_PREFIX}/../Calculator
            NO_DEFAULT_PATH
)

if (MathLib_FOUND)
    message("MathLib found")
    add_executable(CalculatorTest main.cpp)
    target_link_libraries(CalculatorTest MathLib)
else()
    message(FATAL_ERROR "MathLib NOT found")
endif()
