#!/bin/bash

# Loop through each directory in the current directory
for dir in */; do
    # Remove trailing slash from directory name
    dirname=${dir%/}
    # Echo the stow command
    stow $dirname
done