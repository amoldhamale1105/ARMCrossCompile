# ARMCrossCompile  
Build cross-compiled apps for arm architecture. **Tested on ARM335X SOC**  

## Build instructions  
- Add your source file to the ```add_executable()``` as shown for the sample source file  
- Alternatively, this is set up as a template which you can base your project on  
- To build an app for the host environment, run ```cmake ..``` from the build directory followed my ```make```  
- A better option is to open the project with VS code and do a clean reconfigure followed by clean rebuild  
- To build for target (arm), run ```make clean``` followed by ```make arm-app``` in the project root

## Output
The generated binary will be present in the bin directory of the project structure 