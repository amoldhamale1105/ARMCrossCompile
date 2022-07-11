# ARMCrossCompile  
Build cross-compiled apps for arm architecture.   

## Build instructions  
- Add your source file to the `add_executable()` macro in `CMakeLists.txt` as shown for the sample source file  
- Alternatively, this is set up as a template which you can base your project on  

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
The generated binary will be present in a `bin` directory at the root of the project  
Check the architecture type of the binary with the following command to confirm  
```
file TestApp
``` 
