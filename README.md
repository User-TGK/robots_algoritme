# World of Robots - Robots

## Authors: Jorn Brouwer & Ties Klappe
## Date: 16-03-2018

## To build the application the following prerequisites have to be met

1. Operating system Linux Debian Stable or Ubuntu 17.04 LTS
2. Installed GCC compiler, version 6.3 or higher
3. OpenCV 3.0 or higher
4. CMake 2.8 or higher


## Build instructions

1. Open a terminal and go to the root directory of this repository
2. Create and enter a build directory by running: ** "mkdir build && cd build" **
3. Run ** "cmake ../" **
4. Build the application with the generated makefile by running: ** "make" **


## Run instructions

1. Batch-mode
   - 1A. After building, stay in the build directory and run ** "./RobotAlgorithm ../batch/batchfile.ini" **
   - 1B. The second argument provides the path to a batch file, alter the path to the location where your batchfile is stored. ../batch/batchfile.ini provides an example batch file and instructions how to write a valid batch file.
   - 1C. Providing an invalid batch file will show an exception thrown by the application. The application won't start until you have provided a valid batch file.
   
2. Interactive-mode
   - 2A. After building, stay in the build directory and run ** "./RobotAlgorithm" **
   - 2B. While in interactive mode you can keep entering new specifications by using the console input. If you want to shut the application down, type 'exit' and confirm with the enter key.
   - 2C. Providing an invalid specification will show an exception thrown by the application.

3. Calibration-mode
    - 3A. Before running a batch or starting the interactive mode you might want to calibrate the color ranges. 
    After building, stay in the build directory and run Run ** "./RobotAlgorithm calibrate mode" **
    - 3B. Three screens will open, one that displays the last frame captured from the camera, one that displays the frame after the extraction process and one that provides 8 sliders.
    - 3C. On the slider screen: adjust the sliders to new ranges (select a color with the first slider) as you please. The result of the new ranges are displayed in the second window (binary image after extraction).
    - 3D. When finished adjusting the ranges, move the last slider from 0 to 1: the application will save the calibrated ranges and the next time you start the application the new ranges will be used.

### Code/memory checking

4. A (Optional) if cppcheck is installed run: ** 'cppcheck ../src/ --force' **
4. B (Optional) if valgrind is installed run: ** 'valgrind --log-file="valgrindlog.txt" --leak-check=full -v ./RobotAlgorithm' **

*Note: the root directory has been provided with a DoxyFile (doxygen configuration). Run doxygen DoxyFile to generate the doxygen.