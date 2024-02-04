@echo off

setlocal ENABLEDELAYEDEXPANSION

rem Default parameters
set project_path=%CD:\=\\%
set exe_name=main.exe
set /a skip_confirm=0

rem Identify arguments
:arg_parse

rem Check if a working directory is specified
if "%1" == "/wd" (
    shift
    goto wd_parse
:wd_parse
    if "%~1" == "" (
        goto arg_parse
    ) else (
        call :arg_getpath "%~1" project_path result
        if !result! equ 0 (
            echo Invalid path: %~1
            exit /b
        )
        shift
        goto arg_parse
    )
)

rem Check if an executable name is specified
if "%1" == "/en" (
    shift
    goto en_parse
:en_parse
    if "%~1" == "" (
        goto arg_parse
    ) else (
        call :arg_getexe "%~1" exe_name
        shift
        goto arg_parse
    )
)

rem Check if user wants to skip confirmation
if "%1" == "/y" (
    shift
goto y_parse
:y_parse
    call :arg_gety skip_confirm
    goto arg_parse
)

rem Check if an invalid argument was found
if not "%~1" == "" (
    echo Invalid argument: %1
    exit /b
)

rem Summary of workspace
echo WORKSPACE
echo Working directory: %project_path%
echo Executable name:   %exe_name%
echo.

rem Check if user agrees
if !skip_confirm! equ 0 (
    call :check_confirm run_compile
    if !run_compile! equ 0 exit /b
)

rem Prepare output directories
set build_path=%project_path%\\Build
if not exist "%build_path%" mkdir "%build_path%"

set rleas_path=%project_path%\\Release
if not exist "%rleas_path%" mkdir "%rleas_path%"

rem System paths
set msvc_path=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.38.33130
set wkit_path=C:\Program Files (x86)\Windows Kits\10

rem Modify system variables
set INCLUDE=%msvc_path%\include;%INCLUDE%
set INCLUDE=%wkit_path%\Include\10.0.22621.0\ucrt;%INCLUDE%

set LIB=%msvc_path%\lib\x64;%LIB%
set LIB=%wkit_path%\Lib\10.0.22621.0\ucrt\x64;%LIB%
set LIB=%wkit_path%\Lib\10.0.22621.0\um\x64;%LIB%

rem Compile all source files
pushd %project_path%
for /r %%i in (*.cpp) do (
    set cpp_file=%%~nxi
    cl %%i /Fo"%build_path%\\!cpp_file:~0,-4!" /EHsc /c
)
popd

rem Link objects
link "%build_path%\\*.obj" /OUT:"%rleas_path%\\%exe_name%"

endlocal
exit /b

rem INI arg_getpath
:arg_getpath
rem Get path
set argpath=%~1
set argpath=%argpath:\=\\%
set argpath=%argpath:/=\\%
set /a argresult=0

rem Verify path existance
if exist "%argpath%" (
    rem Transform to all-purpouse absolute path
    pushd %argpath%
    set %2=!cd:\=\\!
    popd
    set /a argresult=1
)
set /a %3=%argresult%
exit /b
rem END

rem INI arg_getexe
:arg_getexe
rem Get executable name
set %2=%~1
exit /b
rem END

rem INI arg_gety
:arg_gety
rem Get confirmation
set /a %1=1
exit /b
rem END

rem INI check_confirm
:check_confirm
rem Ask user
set /p "user_input=Proceed (Y/N)? "

rem Process input
set /a %1=0
if "%user_input%" == "y" (
    set /a %1=1
)

if "%user_input%" == "Y" (
    set /a %1=1
)
rem END
