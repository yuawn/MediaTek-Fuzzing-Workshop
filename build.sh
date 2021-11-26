#!/bin/bash -ex

if [ ! -d "AFLplusplus" ]; then
    git clone -b dev https://github.com/AFLplusplus/AFLplusplus.git
    git -C AFLplusplus checkout d50da14f600ae7f50552fc7ad930a0accaa05b09
    git -C AFLplusplus apply ../afl++.diff
fi

cp llvm-pass/* AFLplusplus/instrumentation
make -C AFLplusplus
make -C target