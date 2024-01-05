function(LIV_prevent_in_source_builds)
if(CMAKE_CURRENT_SOURCE_DIR STREQUAL CMAKE_CURRENT_BINARY_DIR)
message(FATAL_ERROR "In-source builds are not supported. Create a dedicated build directory.")
endif()
endfunction()

LIV_prevent_in_source_builds()