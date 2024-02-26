cmake_minimum_required(VERSION 3.5)

# IF statement
set(VAR     OFF)
set(VAR2    VAR)

if(${VAR2})
    message("IF block executed")
else()
    message("ELSE block executed")
endif()

message(----------------------------------------------------------------------)

# DEFINED statement
set(NAME Alice)
if(DEFINED NAME)
    message("NAME: IF block executed")
else()
    message("NAME: ELSE block executed")
endif()

if(DEFINED AGE)
    message("AGE: IF block executed")
else()
    message("AGE: ELSE block executed")
endif()

message(----------------------------------------------------------------------)

# COMMAND statement
if(COMMAND target_link_library)
    message("target_link_library is a command")
else()
    message("target_link_library is NOT a command")
endif()

if(COMMAND target_link_libraries)
    message("target_link_libraries is a command")
else()
    message("target_link_libraries is NOT a command")
endif()

message(----------------------------------------------------------------------)

# EXISTS statement
if(EXISTS CMakeLists.txt)
    message("Given file exists")
else()
    message("File not found")
endif()

message(----------------------------------------------------------------------)

# BINARY tests
set(NAME1 Charlie)
set(NAME2 Charlies)

if(NAME1 STRLESS NAME2)
    message("${NAME1} is less than ${NAME2}")
elseif(NAME1 STRGREATER NAME2)
    message("${NAME1} is greater than ${NAME2}")
elseif(NAME1 STREQUAL NAME2)
    message("${NAME1} is equal to ${NAME2}")
endif()

message(----------------------------------------------------------------------)

# WHILE statement
set(VAR a)
while(NOT VAR STREQUAL "aaaaaaaaaaa")
    set(VAR ${VAR}a)
    message(${VAR})
endwhile()

message(----------------------------------------------------------------------)

# FOR statement
foreach(NAME Alice Bob Charlie)
    message(${NAME})
endforeach()

foreach(X RANGE 100 105)
    message("Person_${X}")
endforeach()

set(VAR1 0;1)
set(VAR2 2 3)
set(VAR3 "4;5")

foreach(X IN LISTS VAR1 VAR2 VAR3)
    message("X = ${X}")
endforeach()

message(----------------------------------------------------------------------)

# FUNCTION statement - BASIC
function(print_detail var)
    message("1. My ${var} is ${${var}}")
endfunction()

function(print_detail var)
    message("2. My ${var} is ${${var}}")
endfunction()

function(print_detail var)
    message("3. My ${var} is ${${var}}")
endfunction()

set(name Charlie)
set(age 45)
print_detail(name)
_print_detail(age)

message(----------------------------------------------------------------------)

# FUNCTION statement - OPTIONAL ARGS
function(print_detail var)
    message("ARGC  = ${ARGC}")
    message("ARGV  = ${ARGV}")
    message("ARGN  = ${ARGN}")
    
    if(DEFINED ARGV0)
        message("ARGV0 = ${ARGV0}")
    endif()
    if(DEFINED ARGV1)
        message("ARGV1 = ${ARGV1}")
    endif()
    if(DEFINED ARGV2)
        message("ARGV2 = ${ARGV2}")
    endif()
    if(DEFINED ARGV3)
        message("ARGV3 = ${ARGV3}")
    endif()

    message("LIST OF ARGUMENTS:")
    foreach(arg ${ARGV})
        message(${arg})
    endforeach()

    message("LIST OF OPTIONAL ARGUMENTS:")
    foreach(arg ${ARGN})
        message(${arg})
    endforeach()
endfunction()

set(sex Male)
print_detail(name age sex)

message(----------------------------------------------------------------------)

# SCOPES (function / add_subdirectory)
set(Name Charlie)
function(print_detail)
    message("Inside function: Before modification: ${Name}")
    set(Name Bob)
    message("Inside function: After modification: ${Name}")
    set(Name Charlie PARENT_SCOPE)
    message("Inside function: After PARENT_SCOPE modification: ${Name}")
endfunction()

message("Outside function: Before function call: ${Name}")
print_detail()
message("Outside function: After function call: ${Name}")

message(----------------------------------------------------------------------)

# MACRO statement
macro(print_detail_macro NameMacro)
    message("Inside macro: Before modification: ${NameMacro}")
    set(Name Bob)
    message("Inside macro: After modification: ${NameMacro}")
    if(DEFINED NameMacro)
        message("IF block executed")
    endif()
endmacro()

message("Outside macro: Before macro call: ${Name}")
print_detail_macro(Charlie)
message("Outside macro: After macro call: ${Name}")

message(----------------------------------------------------------------------)
