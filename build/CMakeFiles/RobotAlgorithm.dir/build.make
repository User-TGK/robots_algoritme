# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build

# Include any dependencies generated for this target.
include CMakeFiles/RobotAlgorithm.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/RobotAlgorithm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RobotAlgorithm.dir/flags.make

CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o: CMakeFiles/RobotAlgorithm.dir/flags.make
CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o -c /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/main.cpp

CMakeFiles/RobotAlgorithm.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RobotAlgorithm.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/main.cpp > CMakeFiles/RobotAlgorithm.dir/src/main.cpp.i

CMakeFiles/RobotAlgorithm.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RobotAlgorithm.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/main.cpp -o CMakeFiles/RobotAlgorithm.dir/src/main.cpp.s

CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o.requires

CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o.provides: CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/RobotAlgorithm.dir/build.make CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o.provides

CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o.provides.build: CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o


CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o: CMakeFiles/RobotAlgorithm.dir/flags.make
CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o: ../src/FilterExecutor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o -c /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/FilterExecutor.cpp

CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/FilterExecutor.cpp > CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.i

CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/FilterExecutor.cpp -o CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.s

CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o.requires:

.PHONY : CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o.requires

CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o.provides: CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o.requires
	$(MAKE) -f CMakeFiles/RobotAlgorithm.dir/build.make CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o.provides.build
.PHONY : CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o.provides

CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o.provides.build: CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o


CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o: CMakeFiles/RobotAlgorithm.dir/flags.make
CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o: ../src/Application.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o -c /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Application.cpp

CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Application.cpp > CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.i

CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Application.cpp -o CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.s

CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o.requires:

.PHONY : CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o.requires

CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o.provides: CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o.requires
	$(MAKE) -f CMakeFiles/RobotAlgorithm.dir/build.make CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o.provides.build
.PHONY : CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o.provides

CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o.provides.build: CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o


CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o: CMakeFiles/RobotAlgorithm.dir/flags.make
CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o: ../src/BatchApplication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o -c /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/BatchApplication.cpp

CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/BatchApplication.cpp > CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.i

CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/BatchApplication.cpp -o CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.s

CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o.requires:

.PHONY : CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o.requires

CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o.provides: CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o.requires
	$(MAKE) -f CMakeFiles/RobotAlgorithm.dir/build.make CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o.provides.build
.PHONY : CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o.provides

CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o.provides.build: CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o


CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o: CMakeFiles/RobotAlgorithm.dir/flags.make
CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o: ../src/InteractiveApplication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o -c /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/InteractiveApplication.cpp

CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/InteractiveApplication.cpp > CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.i

CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/InteractiveApplication.cpp -o CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.s

CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o.requires:

.PHONY : CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o.requires

CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o.provides: CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o.requires
	$(MAKE) -f CMakeFiles/RobotAlgorithm.dir/build.make CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o.provides.build
.PHONY : CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o.provides

CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o.provides.build: CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o


CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o: CMakeFiles/RobotAlgorithm.dir/flags.make
CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o: ../src/Specification.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o -c /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Specification.cpp

CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Specification.cpp > CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.i

CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Specification.cpp -o CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.s

CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o.requires:

.PHONY : CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o.requires

CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o.provides: CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o.requires
	$(MAKE) -f CMakeFiles/RobotAlgorithm.dir/build.make CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o.provides.build
.PHONY : CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o.provides

CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o.provides.build: CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o


CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o: CMakeFiles/RobotAlgorithm.dir/flags.make
CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o: ../src/Parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o -c /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Parser.cpp

CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Parser.cpp > CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.i

CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Parser.cpp -o CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.s

CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o.requires:

.PHONY : CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o.requires

CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o.provides: CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o.requires
	$(MAKE) -f CMakeFiles/RobotAlgorithm.dir/build.make CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o.provides.build
.PHONY : CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o.provides

CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o.provides.build: CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o


CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o: CMakeFiles/RobotAlgorithm.dir/flags.make
CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o: ../src/Detection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o -c /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Detection.cpp

CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Detection.cpp > CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.i

CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Detection.cpp -o CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.s

CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o.requires:

.PHONY : CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o.requires

CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o.provides: CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o.requires
	$(MAKE) -f CMakeFiles/RobotAlgorithm.dir/build.make CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o.provides.build
.PHONY : CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o.provides

CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o.provides.build: CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o


CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o: CMakeFiles/RobotAlgorithm.dir/flags.make
CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o: ../src/Extraction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o -c /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Extraction.cpp

CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Extraction.cpp > CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.i

CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/Extraction.cpp -o CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.s

CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o.requires:

.PHONY : CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o.requires

CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o.provides: CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o.requires
	$(MAKE) -f CMakeFiles/RobotAlgorithm.dir/build.make CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o.provides.build
.PHONY : CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o.provides

CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o.provides.build: CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o


CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o: CMakeFiles/RobotAlgorithm.dir/flags.make
CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o: ../src/CalibrationMode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o -c /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/CalibrationMode.cpp

CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/CalibrationMode.cpp > CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.i

CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/src/CalibrationMode.cpp -o CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.s

CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o.requires:

.PHONY : CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o.requires

CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o.provides: CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o.requires
	$(MAKE) -f CMakeFiles/RobotAlgorithm.dir/build.make CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o.provides.build
.PHONY : CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o.provides

CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o.provides.build: CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o


# Object files for target RobotAlgorithm
RobotAlgorithm_OBJECTS = \
"CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o" \
"CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o" \
"CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o" \
"CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o" \
"CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o" \
"CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o" \
"CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o" \
"CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o" \
"CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o" \
"CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o"

# External object files for target RobotAlgorithm
RobotAlgorithm_EXTERNAL_OBJECTS =

RobotAlgorithm: CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o
RobotAlgorithm: CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o
RobotAlgorithm: CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o
RobotAlgorithm: CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o
RobotAlgorithm: CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o
RobotAlgorithm: CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o
RobotAlgorithm: CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o
RobotAlgorithm: CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o
RobotAlgorithm: CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o
RobotAlgorithm: CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o
RobotAlgorithm: CMakeFiles/RobotAlgorithm.dir/build.make
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_stitching3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_superres3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_videostab3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_aruco3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_bgsegm3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_bioinspired3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_ccalib3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_cvv3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_dpm3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_face3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_fuzzy3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_hdf3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_img_hash3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_line_descriptor3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_optflow3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_reg3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_rgbd3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_saliency3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_stereo3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_structured_light3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_surface_matching3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_tracking3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_xfeatures2d3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_ximgproc3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_xobjdetect3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_xphoto3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_shape3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_photo3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_calib3d3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_viz3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_phase_unwrapping3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_video3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_datasets3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_plot3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_text3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_dnn3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_features2d3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_flann3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_highgui3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_ml3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_videoio3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_imgcodecs3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_objdetect3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_imgproc3.so.3.3.1
RobotAlgorithm: /opt/ros/lunar/lib/libopencv_core3.so.3.3.1
RobotAlgorithm: CMakeFiles/RobotAlgorithm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable RobotAlgorithm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RobotAlgorithm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RobotAlgorithm.dir/build: RobotAlgorithm

.PHONY : CMakeFiles/RobotAlgorithm.dir/build

CMakeFiles/RobotAlgorithm.dir/requires: CMakeFiles/RobotAlgorithm.dir/src/main.cpp.o.requires
CMakeFiles/RobotAlgorithm.dir/requires: CMakeFiles/RobotAlgorithm.dir/src/FilterExecutor.cpp.o.requires
CMakeFiles/RobotAlgorithm.dir/requires: CMakeFiles/RobotAlgorithm.dir/src/Application.cpp.o.requires
CMakeFiles/RobotAlgorithm.dir/requires: CMakeFiles/RobotAlgorithm.dir/src/BatchApplication.cpp.o.requires
CMakeFiles/RobotAlgorithm.dir/requires: CMakeFiles/RobotAlgorithm.dir/src/InteractiveApplication.cpp.o.requires
CMakeFiles/RobotAlgorithm.dir/requires: CMakeFiles/RobotAlgorithm.dir/src/Specification.cpp.o.requires
CMakeFiles/RobotAlgorithm.dir/requires: CMakeFiles/RobotAlgorithm.dir/src/Parser.cpp.o.requires
CMakeFiles/RobotAlgorithm.dir/requires: CMakeFiles/RobotAlgorithm.dir/src/Detection.cpp.o.requires
CMakeFiles/RobotAlgorithm.dir/requires: CMakeFiles/RobotAlgorithm.dir/src/Extraction.cpp.o.requires
CMakeFiles/RobotAlgorithm.dir/requires: CMakeFiles/RobotAlgorithm.dir/src/CalibrationMode.cpp.o.requires

.PHONY : CMakeFiles/RobotAlgorithm.dir/requires

CMakeFiles/RobotAlgorithm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RobotAlgorithm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RobotAlgorithm.dir/clean

CMakeFiles/RobotAlgorithm.dir/depend:
	cd /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build /home/ties/Documents/WorldOfRobots/Robots/robotsalgoritme/build/CMakeFiles/RobotAlgorithm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RobotAlgorithm.dir/depend

