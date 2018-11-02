cmake_minimum_required(VERSION 2.8)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(THREADS_PREFER_PTHREAD_FLAG ON)

set(CMAKE_SOURCE_DIR ../src/)

project( Robots-Algorithm )

set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -std=c++17 -Wconversion -Wall -Werror -Wextra")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -std=c++17 -Wconversion -Wall -Werror -Wextra")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -Wconversion -Wall -Werror -Wextra -g")

find_package( OpenCV 3 REQUIRED )
find_package( Threads REQUIRED)

include_directories( ${OpenCV_INCLUDE_DIRS} )
add_executable( RobotAlgorithm src/main.cpp src/FilterExecutor.cpp src/Application.cpp src/BatchApplication.cpp src/InteractiveApplication.cpp src/Specification.cpp src/Parser.cpp src/Detection.cpp src/Extraction.cpp src/CalibrationMode.cpp)
target_link_libraries( RobotAlgorithm ${OpenCV_LIBS} Threads::Threads )