#!/bin/bash

BUILD_DIR=$PWD
CACHE_DIR=$PWD/../.godot-ubports

# Store everything in a separate cache directory
mkdir -p "$CACHE_DIR"
cd "$CACHE_DIR"

# Move godot binary from built library
cp $BUILD_DIR/../ubports-godot/godot.ubports.${ARCH} "$CACHE_DIR"/

# Copy Godot executable to build directory
cd "$BUILD_DIR"
cp "$CACHE_DIR"/godot.ubports.${ARCH} godot
