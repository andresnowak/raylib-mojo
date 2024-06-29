cmake_minimum_required(VERSION 3.0)
project(raylib_bindings VERSION 1.0.0 LANGUAGES C)

# Include the configuration file
include(${CMAKE_CURRENT_SOURCE_DIR}/config.cmake)
set(RAYLIB_LIB_DIR "${RAYLIB_ROOT_DIR}/lib")
set(RAYLIB_INCLUDE_DIR "${RAYLIB_ROOT_DIR}/include")

# Specify the C standard
set(CMAKE_C_STANDARD 11)

# Find raylib
find_library(RAYLIB raylib PATHS ${RAYLIB_LIB_DIR})
if(NOT RAYLIB)
    message(FATAL_ERROR "raylib not found. Make sure it's installed in your system.")
else()
    message(STATUS "raylib found at: ${RAYLIB}")
endif()

# Check raylib header
if(NOT EXISTS "${RAYLIB_INCLUDE_DIR}/raylib.h")
    message(FATAL_ERROR "raylib.h not found. Make sure it's installed in your system.")
else()
    message(STATUS "raylib.h found at: ${RAYLIB_INCLUDE_DIR}")
endif()

# Create a shared library from your source files
add_library(raylib_bindings SHARED 
    rtext_bindings.c
    rtextures_bindings.c
)

# Include raylib header directory
target_include_directories(raylib_bindings PRIVATE ${RAYLIB_INCLUDE_DIR})

# Link raylib to your library
target_link_libraries(raylib_bindings PRIVATE ${RAYLIB})

set_target_properties(raylib_bindings PROPERTIES
    PUBLIC_HEADER "rtext_bindings.h;rtextures_bindings.h"
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
    LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib
)

# Specify installation rules (optional)
install(TARGETS raylib_bindings
    LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib
    PUBLIC_HEADER DESTINATION ${PROJECT_SOURCE_DIR}/include
)