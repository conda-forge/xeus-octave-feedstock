#!/bin/bash

cmake -B build ${CMAKE_ARGS} \
    -D XEUS_OCTAVE_DISABLE_ARCH_NATIVE=ON \
    -D XEUS_OCTAVE_PKG_REBUILD=ON \
cmake --build build --parallel ${CPU_COUNT}
cmake --install build --prefix ${PREFIX}
