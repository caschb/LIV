cmake_minimum_required(VERSION 3.21 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/cmake/PreventInSourceBuilds.cmake)
project(
        LIV
        VERSION 0.0.1
        LANGUAGES CXX
        HOMEPAGE_URL "https://github.com/caschb/LIV"
        )

set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING "Build type" FORCE)
    set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "RelWithDebInfo;Release;Debug")
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmake/LIVFunctions.cmake)

LIV_add_option(BUILD_TESTING "Build test programs" OFF)
LIV_add_option(TREAT_WARNINGS_AS_ERRORS "Treat all warnings as errors" OFF)
LIV_add_option(USE_ADDRESS_SANITIZER "Use address sanitizer" OFF)

include(${CMAKE_CURRENT_LIST_DIR}/cmake/SystemLink.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/Dependencies.cmake)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/source)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/examples)