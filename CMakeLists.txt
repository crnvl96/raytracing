# CMakeLists.txt for Raytracing project
# Setup vendored SDL2:
# 1. Clone SDL2: git clone https://github.com/libsdl-org/SDL.git
# 3. Configure SDL2: cd SDL && ./configure --prefix=/absulute/path/to/vendored/directory
# 4. Build and install: make && make install
#
# Usage:
# 1. Create a build directory: mkdir build && cd build
# 2. Configure the project: cmake ..
# 3. Build the executable: make
# 4. Run the program: ./raytracing

cmake_minimum_required(VERSION 3.16)
project(Raytracing)

# Include vendored SDL2 headers
include_directories(vendored/include)

# Link against vendored SDL2 libraries
link_directories(vendored/lib)

# Create executable from raytracing.c
add_executable(raytracing raytracing.c)

# Link SDL2 and math libraries
target_link_libraries(raytracing SDL2 m)

# Set rpath for runtime library loading
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)
set(CMAKE_INSTALL_RPATH "${CMAKE_SOURCE_DIR}/vendored/lib")
