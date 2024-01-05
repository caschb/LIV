include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/CPM.cmake)

function(LIV_setup_dependencies)
if(NOT TARGET adios2::cxx11)
    cpmaddpackage("gh:ornladios/ADIOS2@2.9.2")
endif()

endfunction()

LIV_setup_dependencies()