#include <LIV/liv.h>
#include <adios2.h>

void LIV::print_information() {
  std::cout << adios2::DefaultBufferChunkSize << '\n';
}

int LIV::sum(int a, int b) noexcept { return a + b; }