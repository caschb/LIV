include(GenerateExportHeader)

add_library(LIV liv.cpp)
add_library(LIV::LIV ALIAS LIV)

target_include_directories(LIV ${WARNING_GUARD} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>)
target_link_system_libraries(LIV adios::cxx11)