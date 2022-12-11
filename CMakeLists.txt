cmake_minimum_required(VERSION 3.16)
project(CrossCompile VERSION 1.1)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

file(GLOB_RECURSE SRC_FILES RELATIVE ${CMAKE_SOURCE_DIR} src/*.c src/*.cpp)

foreach(source_file ${SRC_FILES})
    get_filename_component(BINARY_NAME ${source_file} NAME_WE)
    add_executable(${BINARY_NAME} ${source_file})
endforeach(source_file ${SRC_FILES})
