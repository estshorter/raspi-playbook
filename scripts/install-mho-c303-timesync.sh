#!/bin/bash -eu
SCRIPT_DIR=$(cd $(dirname $0); pwd)

if [ ! -d MHO-C303-timesync ]; then
    git clone --filter=blob:none --recursive https://github.com/estshorter/MHO-C303-timesync.git
fi
cd MHO-C303-timesync

cd include/gattlib
cmake -DGATTLIB_BUILD_DOCS=OFF -DCMAKE_BUILD_TYPE=Release -B build -GNinja
cmake --build build
sudo cmake --install build
cd ${SCRIPT_DIR}/MHO-C303-timesync

# build
cmake -DCMAKE_BUILD_TYPE=Release -B build -GNinja
cmake --build build

# install
sudo cmake --install build

cd ${SCRIPT_DIR}
