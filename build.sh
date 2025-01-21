#!/bin/bash

# Clean the build directory
rm -rf build
mkdir build

# Getting the project name from the current directory
project_name=$(basename $(pwd))

# Print the project name
echo "Building $project_name in build/$project_name"

# Build the project
odin build src -show-timings -strict-style -out:build/$project_name
