cmake_minimum_required(VERSION 3.16)
project(MyCCApp VERSION 1.1)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

set(SOURCES
    src/sample.cpp
    # Add more linkable sources to this list
)

add_executable(${PROJECT_NAME} ${SOURCES})

file(GLOB_RECURSE SRC_FILES RELATIVE ${CMAKE_SOURCE_DIR} src/*.c src/*.cpp)

foreach(source_file ${SRC_FILES})
    get_filename_component(BINARY_NAME ${source_file} NAME_WE)
    add_executable(${BINARY_NAME} ${source_file})
endforeach(source_file ${SRC_FILES})
