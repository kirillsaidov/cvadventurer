cmake_minimum_required(VERSION 3.0)

# project name init
project(image_manipulations
        VERSION 1.0
        LANGUAGES CXX)

# setting default build type
set(default_buid_type "Release")
set(EXECUTABLE_OUTPUT_PATH ../../bin)

# setting up opencv4 paths
set(CMAKE_PREFIX_PATH /usr/local/lib/cmake/opencv4)
set(ENV{OPENCV_DIR} /usr/local/lib/cmake/opencv4)
set(OPENCV_DIR /usr/local/lib/cmake/opencv4)

# configuring exe
add_executable(${PROJECT_NAME}
                src/main.cpp)

# configuring target
target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_14)
target_include_directories(${PROJECT_NAME} PRIVATE include)

# required packages
find_package(OpenCV REQUIRED)

# linking
target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS})







