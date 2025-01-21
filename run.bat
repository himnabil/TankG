@echo off

set build_dir=dev_build
REM Clean the build directory
if exist %build_dir% rmdir /s /q %build_dir%
mkdir %build_dir%

REM Getting the project name from the current directory
for %%* in (.) do set project_name=%%~n*
set build_file=%build_dir%\%project_name%.exe

REM Print the project name
echo Building %project_name% in %build_file%

REM Build the project
odin run src -strict-style -out:%build_file%
