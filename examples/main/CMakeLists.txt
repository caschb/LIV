add_executable(main main.cpp)

target_link_libraries(main PRIVATE LIV::LIV)
target_include_directories(main PRIVATE ${CMAKE_SOURCE_DIR}/include)