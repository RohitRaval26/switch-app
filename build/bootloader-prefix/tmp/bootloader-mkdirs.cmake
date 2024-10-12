# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/rohitraval/Documents/esp/esp-idf/components/bootloader/subproject"
  "/Users/rohitraval/Documents/esp-rainmaker/examples/switch/build/bootloader"
  "/Users/rohitraval/Documents/esp-rainmaker/examples/switch/build/bootloader-prefix"
  "/Users/rohitraval/Documents/esp-rainmaker/examples/switch/build/bootloader-prefix/tmp"
  "/Users/rohitraval/Documents/esp-rainmaker/examples/switch/build/bootloader-prefix/src/bootloader-stamp"
  "/Users/rohitraval/Documents/esp-rainmaker/examples/switch/build/bootloader-prefix/src"
  "/Users/rohitraval/Documents/esp-rainmaker/examples/switch/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/rohitraval/Documents/esp-rainmaker/examples/switch/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/rohitraval/Documents/esp-rainmaker/examples/switch/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
