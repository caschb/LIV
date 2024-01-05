cmake_minimum_required(VERSION 3.21 FATAL_ERROR)

include(cmake/PreventInSourceBuilds.cmake)
project(
        LIV
        VERSION 0.0.1
        LANGUAGES CXX
        HOMEPAGE_URL "https://github.com/caschb/LIV"
        )


option(BUILD_TESTING "Build test programs" OFF)
option(TREAT_WARNINGS_AS_ERRORS "Treat all warnings as errors" OFF)
option(USE_ADDRESS_SANITIZER "Use address sanitizer" OFF)

set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING "Build type" FORCE)
    set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS RelWithDebInfo Release Debug)
endif()

add_subdirectory(examples)