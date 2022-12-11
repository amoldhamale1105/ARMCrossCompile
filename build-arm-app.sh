#!/bin/bash

cmake -S. -Bbuild -DCMAKE_TOOLCHAIN_FILE=../cross-compilation.cmake
cmake --build build --config Release --target all