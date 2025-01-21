@echo off

REM Clean the build directory
if exist build rmdir /s /q build
mkdir build

REM Getting the project name from the current directory
for %%* in (.) do set project_name=%%~n*

REM Print the project name
echo Building %project_name% in build\%project_name%.exe

REM Build the project
odin build src -show-timings -strict-style -out:build\%project_name%.exe
