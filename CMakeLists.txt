cmake_minimum_required(VERSION 3.27)
project(tiktorchic18.github.io C)

set(CMAKE_C_STANDARD 99)

add_executable(${PROJECT_NAME} src/main.c)

set(CMAKE_EXECUTABLE_SUFFIX ".html")

if(MSVC)
    add_compile_options(/W4)
else()
    add_compile_options(-Wall -Wextra -Wpedantic)
endif()

include_directories(AFTER . include)
