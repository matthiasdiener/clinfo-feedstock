#!/bin/bash

set -ex

if [[ $target_platform == osx-* ]]; then
    # Allow overriding conflicting types in the khronos headers
    rm $PREFIX/include/CL/cl_ext.h
    touch $PREFIX/include/CL/cl_ext.h
fi

make install OS=Linux PREFIX=$PREFIX
