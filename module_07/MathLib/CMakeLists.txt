project(MathLib VERSION 1.0.0)

add_library(MathLib
    src/adder.cpp
    src/divider.cpp)

target_include_directories(
    MathLib
        PUBLIC
            $<INSTALL_INTERFACE:include>
            $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
)

install(
    FILES
        ${CMAKE_CURRENT_SOURCE_DIR}/include/MathLib/adder.h
        ${CMAKE_CURRENT_SOURCE_DIR}/include/MathLib/divider.h
    DESTINATION
        ${CMAKE_INSTALL_PREFIX}/include/MathLib
)

install(
    TARGETS MathLib
    EXPORT MathExport
    DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/MathLib
)

install(
    EXPORT MathExport
    FILE MathLibConfig.cmake
    DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/MathLib
)
