#!/bin/bash

# Enter the LLVM project.
cd llvm-project

# Create a directory to build the project.
mkdir build
cd build

# Run `cmake` to configure the project.
cmake \
  -G Ninja \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_ENABLE_PROJECTS="clang" \
  -DLLVM_ENABLE_TERMINFO=OFF \
  -DLLVM_ENABLE_ZLIB=OFF \
  -DLLVM_INCLUDE_DOCS=OFF \
  -DLLVM_INCLUDE_EXAMPLES=OFF \
  -DLLVM_INCLUDE_GO_TESTS=OFF \
  -DLLVM_INCLUDE_TESTS=OFF \
  -DLLVM_INCLUDE_UTILS=OFF \
  -DLLVM_TARGETS_TO_BUILD="X86;AArch64" \
  ../llvm

# Showtime!
ninja