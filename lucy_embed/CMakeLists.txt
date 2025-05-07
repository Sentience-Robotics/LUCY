cmake_minimum_required(VERSION 3.13..3.27)

#include(uros_sdk_import.cmake)
set(PICO_SDK_FETCH_FROM_GIT on)
include(pico_sdk_import.cmake)

project(lucy_embed C CXX ASM)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

pico_sdk_init()

add_compile_options(-Wall -Wextra)
link_directories(external/libmicroros)
include_directories(external/libmicroros/include)

set(SOURCE_FILE
    src/main.c
    src/pico_uart_transport.c
)

add_executable(lucy_embed
    ${SOURCE_FILE})

target_link_libraries(lucy_embed
    pico_stdlib
    microros
)

pico_enable_stdio_usb(lucy_embed 1)
pico_enable_stdio_uart(lucy_embed 0)

pico_add_extra_outputs(lucy_embed)
