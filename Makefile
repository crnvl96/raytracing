.PHONY: compile run

# Compile flags explanation:
# -I: Add directory to search for include files (e.g., headers like SDL.h)
# -L: Add directory to search for libraries during linking
# -Wl,-rpath: Pass -rpath option to the linker, embedding the library search path in the executable for runtime
# -l: Link against a specific library (e.g., SDL2)

compile:
	gcc -o raytracing raytracing.c -Ivendor/include/SDL2 -Lvendor/lib -Wl,-rpath,vendor/lib -lSDL2

run:
	LD_LIBRARY_PATH=vendor/lib ./raytracing
