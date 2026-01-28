#!/bin/bash

cmake -B build \
    -DCMAKE_BUILD_TYPE=Release     \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_INSTALL_LIBDIR=lib     \
    -DXEUS_OCTAVE_DISABLE_ARCH_NATIVE=ON \
    -DXEUS_OCTAVE_PKG_REBUILD=ON \
    ${CMAKE_ARGS}
cmake --build build --parallel ${CPU_COUNT}
cmake --install build --prefix ${PREFIX}
