#!/bin/bash

#Change dir to script-dir
cd "$(dirname "$0")"

#remove old build-dir and make a new one
cd ..
rm -rf build-opengl
mkdir build-opengl
cd build-opengl

#execute cmake ...
cmake -DOPENAL_LIBRARY=/usr/local/opt/openal-soft/lib/libopenal.dylib -DOPENAL_INCLUDE_DIR=/usr/local/opt/openal-soft/include -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug -DSDL2=ON -DUSE_VULKAN=OFF -DSPIRV_SHADERC=OFF -DSPIRV_SHADERC=OFF -DBINKDEC=ON -DFFMPEG=OFF ../neo

time make -j12
