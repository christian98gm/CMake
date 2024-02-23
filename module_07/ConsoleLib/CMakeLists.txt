project(ConsoleLib VERSION 1.0.0)

add_library(ConsoleLib
    src/printer.cpp
    src/reader.cpp)

target_include_directories(ConsoleLib PUBLIC include)

install(
    FILES
        ${CMAKE_CURRENT_SOURCE_DIR}/include/ConsoleLib/reader.h
        ${CMAKE_CURRENT_SOURCE_DIR}/include/ConsoleLib/printer.h
    DESTINATION
        ${CMAKE_INSTALL_PREFIX}/include/ConsoleLib
)

install(
    TARGETS ConsoleLib
    DESTINATION ${CMAKE_INSTALL_PREFIX}/include/ConsoleLib
)
