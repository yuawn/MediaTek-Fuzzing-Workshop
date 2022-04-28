#!/bin/bash -ex

if [ ! -d "AFLplusplus" ]; then
    git clone -b dev https://github.com/AFLplusplus/AFLplusplus.git
    git -C AFLplusplus checkout 01594dc416c154a7eb8d6782e9a25a8713ad3709
    git -C AFLplusplus apply ../afl++.diff
fi

cp llvm-pass/* AFLplusplus/instrumentation
make -C AFLplusplus
make -C target