project(ConsoleLib VERSION 1.0.0)

add_library(ConsoleLib
    src/printer.cpp
    src/reader.cpp)

target_include_directories(
    ConsoleLib
        PUBLIC
            $<INSTALL_INTERFACE:include>
            $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
)

install(
    FILES
        ${CMAKE_CURRENT_SOURCE_DIR}/include/ConsoleLib/reader.h
        ${CMAKE_CURRENT_SOURCE_DIR}/include/ConsoleLib/printer.h
    DESTINATION
        ${CMAKE_INSTALL_PREFIX}/include/ConsoleLib
)

install(
    TARGETS ConsoleLib
    EXPORT ConsoleExport
    DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/ConsoleLib
)

install(
    EXPORT ConsoleExport
    FILE ConsoleLibConfig.cmake
    DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/ConsoleLib
)
