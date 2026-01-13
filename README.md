# Raytracing

A simple raytracing simulation written in C using SDL2.

<img width="1007" height="793" alt="Screenshot From 2026-01-13 19-55-29" src="https://github.com/user-attachments/assets/9a51753f-fc82-4f9d-94fc-4316a6ae713f" />

<img width="1007" height="793" alt="Screenshot From 2026-01-13 19-55-41" src="https://github.com/user-attachments/assets/3ccd7bd4-730d-4a6e-b9d8-acf0377e9096" />

## Building and Running

1. Create a build directory:
   ```
   mkdir build && cd build
   ```

2. Configure the project with CMake:
   ```
   cmake ..
   ```

3. Build the executable:
   ```
   make
   ```

4. Run the program:
   ```
   ./raytracing
   ```

## Dependencies

This project uses a vendored SDL2 library, so no additional dependencies other than CMAKE are required.
