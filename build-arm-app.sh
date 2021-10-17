#!/bin/bash

pushd build/ > /dev/null
cmake .. -DCMAKE_TOOLCHAIN_FILE=../cross-compilation.cmake
cmake --build .
popd > /dev/null