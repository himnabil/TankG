#!/bin/bash

build_dir="dev_build"
# Clean the build directory
rm -rf $build_dir
mkdir -p $build_dir

# Getting the project name from the current directory
project_name=$(basename $(pwd))
build_file="$build_dir/$project_name"

# Print the project name
echo "Building $project_name in $build_file"

# Build the project
odin run src -strict-style -out:$build_file
