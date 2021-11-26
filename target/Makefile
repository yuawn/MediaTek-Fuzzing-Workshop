all:
	../AFLplusplus/afl-clang-lto -w src.c -o binary
	AFL_USE_ASAN=1 ../AFLplusplus/afl-clang-lto -w src.c -o binary_asan
	AFL_DEMO=1 ../AFLplusplus/afl-clang-lto -w src.c -o binary_instrumented
	@mv binary* ../fuzz
