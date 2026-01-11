.PHONY: compile run

# Compile flags explanation:
# -I: Add directory to search for include files
# -L: Add directory to search for libraries during linking
# -Wl,-rpath: Pass -rpath option to the linker, embedding the library search path in the executable for runtime
# -l: Link against a specific library

compile:
	gcc -o raytracing raytracing.c -Ivendored/include -Lvendored/lib -Wl,-rpath,vendored/lib -lSDL2

run:
	LD_LIBRARY_PATH=vendored/lib ./raytracing
