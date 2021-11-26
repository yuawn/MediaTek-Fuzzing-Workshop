#!/bin/bash

../AFLplusplus/afl-fuzz -i input -o output -- ./binary
#../AFLplusplus/afl-fuzz -i input -o output -x ../mtk.dict -- ./binary
