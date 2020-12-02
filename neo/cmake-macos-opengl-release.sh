#!/bin/bash

#Change dir to script-dir
cd "$(dirname "$0")"

#remove old build-dir and make a new one
cd ..
rm -rf build
mkdir build
cd build

#execute cmake ...
cmake -DOPENAL_LIBRARY=/usr/local/opt/openal-soft/lib/libopenal.dylib -DOPENAL_INCLUDE_DIR=/usr/local/opt/openal-soft/include -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DSDL2=ON -DUSE_VULKAN=OFF -DSPIRV_SHADERC=OFF ../neo 
#-Wno-dev -Wexpansion-to-defined
