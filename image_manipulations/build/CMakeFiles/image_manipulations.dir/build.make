# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.20.5/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.20.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/KS/Desktop/media/dev/repos/gitlab/cvadventurer/image_manipulations

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/KS/Desktop/media/dev/repos/gitlab/cvadventurer/image_manipulations/build

# Include any dependencies generated for this target.
include CMakeFiles/image_manipulations.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/image_manipulations.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/image_manipulations.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/image_manipulations.dir/flags.make

CMakeFiles/image_manipulations.dir/src/main.cpp.o: CMakeFiles/image_manipulations.dir/flags.make
CMakeFiles/image_manipulations.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/image_manipulations.dir/src/main.cpp.o: CMakeFiles/image_manipulations.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/KS/Desktop/media/dev/repos/gitlab/cvadventurer/image_manipulations/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/image_manipulations.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_manipulations.dir/src/main.cpp.o -MF CMakeFiles/image_manipulations.dir/src/main.cpp.o.d -o CMakeFiles/image_manipulations.dir/src/main.cpp.o -c /Users/KS/Desktop/media/dev/repos/gitlab/cvadventurer/image_manipulations/src/main.cpp

CMakeFiles/image_manipulations.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/image_manipulations.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/KS/Desktop/media/dev/repos/gitlab/cvadventurer/image_manipulations/src/main.cpp > CMakeFiles/image_manipulations.dir/src/main.cpp.i

CMakeFiles/image_manipulations.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/image_manipulations.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/KS/Desktop/media/dev/repos/gitlab/cvadventurer/image_manipulations/src/main.cpp -o CMakeFiles/image_manipulations.dir/src/main.cpp.s

# Object files for target image_manipulations
image_manipulations_OBJECTS = \
"CMakeFiles/image_manipulations.dir/src/main.cpp.o"

# External object files for target image_manipulations
image_manipulations_EXTERNAL_OBJECTS =

../bin/image_manipulations: CMakeFiles/image_manipulations.dir/src/main.cpp.o
../bin/image_manipulations: CMakeFiles/image_manipulations.dir/build.make
../bin/image_manipulations: /usr/local/lib/libopencv_gapi.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_stitching.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_alphamat.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_aruco.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_bgsegm.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_bioinspired.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_ccalib.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_dnn_objdetect.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_dnn_superres.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_dpm.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_face.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_freetype.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_fuzzy.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_hfs.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_img_hash.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_intensity_transform.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_line_descriptor.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_mcc.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_quality.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_rapid.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_reg.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_rgbd.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_saliency.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_sfm.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_stereo.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_structured_light.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_superres.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_surface_matching.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_tracking.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_videostab.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_viz.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_wechat_qrcode.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_xfeatures2d.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_xobjdetect.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_xphoto.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_shape.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_highgui.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_datasets.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_plot.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_text.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_ml.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_phase_unwrapping.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_optflow.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_ximgproc.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_video.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_videoio.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_dnn.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_imgcodecs.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_objdetect.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_calib3d.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_features2d.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_flann.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_photo.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_imgproc.4.5.2.dylib
../bin/image_manipulations: /usr/local/lib/libopencv_core.4.5.2.dylib
../bin/image_manipulations: CMakeFiles/image_manipulations.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/KS/Desktop/media/dev/repos/gitlab/cvadventurer/image_manipulations/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/image_manipulations"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/image_manipulations.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/image_manipulations.dir/build: ../bin/image_manipulations
.PHONY : CMakeFiles/image_manipulations.dir/build

CMakeFiles/image_manipulations.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/image_manipulations.dir/cmake_clean.cmake
.PHONY : CMakeFiles/image_manipulations.dir/clean

CMakeFiles/image_manipulations.dir/depend:
	cd /Users/KS/Desktop/media/dev/repos/gitlab/cvadventurer/image_manipulations/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/KS/Desktop/media/dev/repos/gitlab/cvadventurer/image_manipulations /Users/KS/Desktop/media/dev/repos/gitlab/cvadventurer/image_manipulations /Users/KS/Desktop/media/dev/repos/gitlab/cvadventurer/image_manipulations/build /Users/KS/Desktop/media/dev/repos/gitlab/cvadventurer/image_manipulations/build /Users/KS/Desktop/media/dev/repos/gitlab/cvadventurer/image_manipulations/build/CMakeFiles/image_manipulations.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/image_manipulations.dir/depend
