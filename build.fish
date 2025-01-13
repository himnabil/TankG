#!/usr/bin/env fish
# TODO rewrite it in a cross-platform scripting language like python or node.js

# Clean the build directory
rm -rf build
mkdir build

# getting the project name from the current directory
set project_name (basename (pwd))

# Print the project name
echo "Building $project_name in build/$project_name"
 
# Build the project
odin build src -show-timings -strict-style -out:build/$project_name
