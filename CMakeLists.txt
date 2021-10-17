cmake_minimum_required(VERSION 3.5)
project(TestApp VERSION 1.0.0)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

# define executable and its source file
add_executable(TestApp src/BBB_led_control.c)
