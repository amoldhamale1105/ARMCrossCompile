# ARMCrossCompile  
Build cross-compiled apps for Arm architecture and also for x86 host with cmake.   

## Build instructions  
- Add your source file to the `src` directory of the project  
- Add your headers to the same directory (Idea is to keep it simple and generate a cross compiled binary rapidly)  
- Add your source files to the `SOURCES` list and comment out the `foreach` loop in cmake if your compiled object files are going to be relocatable i.e. you're trying to generate a single unified binary with multiple source files, otherwise linking would fail owing to the absence of `main` function when it tries to create an executable without `main`
- You may need to link or add more dependencies to cmake depending on your source code
- You may also need to modify the `cross-compilation.cmake` for an alternate toolchain or architecture
- `CMakeLists.txt` has been set up to iterate through all source files in `src` directory and generate their individual binaries in `bin`

### Build for host x86
- If you're working on the command line alone, create a build directory manually with `mkdir build` at the project root  
- Run the following commands from the build directory
```
cmake ..
make
```
- Another option is to open the project with VS code and do a **clean reconfigure** followed by **clean rebuild**  

### Build for target ARM
- Be at the root of the project directory
- Run the following commands
```
make clean
make arm-app
```

## Output
The generated binaries will be present in a `bin` directory at the root of the project  
Check the architecture type of the binary with the following command to confirm  
```
file BinaryName
``` 
