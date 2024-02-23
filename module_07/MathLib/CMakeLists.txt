project(MathLib VERSION 1.0.0)

add_library(MathLib
    src/adder.cpp
    src/divider.cpp)

target_include_directories(MathLib PUBLIC include)

install(
    FILES
        ${CMAKE_CURRENT_SOURCE_DIR}/include/MathLib/adder.h
        ${CMAKE_CURRENT_SOURCE_DIR}/include/MathLib/divider.h
    DESTINATION
        ${CMAKE_INSTALL_PREFIX}/include/MathLib
)

install(
    TARGETS MathLib
    DESTINATION ${CMAKE_INSTALL_PREFIX}/include/MathLib
)
