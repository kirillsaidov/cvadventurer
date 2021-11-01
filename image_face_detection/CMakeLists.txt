cmake_minimum_required(VERSION 3.0)

project("face_detection" LANGUAGES CXX)

add_executable(${PROJECT_NAME} src/main.cpp src/fdetector.cpp)
target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_14)
target_include_directories(${PROJECT_NAME} PRIVATE include)

# opencv setup
find_package(OpenCV REQUIRED) # PATHS /usr/local/share/OpenCV NO_DEFAULT_PATH
include_directories(${OpenCV_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS})

set(FACE_DETECTION_CONFIGURATION "../res/deploy.prototxt")
set(FACE_DETECTION_WEIGHTS "../res/300_300.caffemodel")  

target_compile_definitions(${PROJECT_NAME} PRIVATE  FACE_DETECTION_CONFIGURATION="${FACE_DETECTION_CONFIGURATION}")  
target_compile_definitions(${PROJECT_NAME} PRIVATE  FACE_DETECTION_WEIGHTS="${FACE_DETECTION_WEIGHTS}")




