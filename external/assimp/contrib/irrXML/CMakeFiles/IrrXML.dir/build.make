# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/mac-dev-env/cmake-3.12.3/bin/cmake

# The command to remove a file.
RM = /usr/local/mac-dev-env/cmake-3.12.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kodor/proj/3d-render

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kodor/proj/3d-render

# Include any dependencies generated for this target.
include external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/depend.make

# Include the progress variables for this target.
include external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/progress.make

# Include the compile flags for this target's objects.
include external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/flags.make

external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/irrXML.cpp.o: external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/flags.make
external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/irrXML.cpp.o: external/assimp/contrib/irrXML/irrXML.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kodor/proj/3d-render/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/irrXML.cpp.o"
	cd /Users/kodor/proj/3d-render/external/assimp/contrib/irrXML && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/IrrXML.dir/irrXML.cpp.o -c /Users/kodor/proj/3d-render/external/assimp/contrib/irrXML/irrXML.cpp

external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/irrXML.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/IrrXML.dir/irrXML.cpp.i"
	cd /Users/kodor/proj/3d-render/external/assimp/contrib/irrXML && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kodor/proj/3d-render/external/assimp/contrib/irrXML/irrXML.cpp > CMakeFiles/IrrXML.dir/irrXML.cpp.i

external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/irrXML.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/IrrXML.dir/irrXML.cpp.s"
	cd /Users/kodor/proj/3d-render/external/assimp/contrib/irrXML && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kodor/proj/3d-render/external/assimp/contrib/irrXML/irrXML.cpp -o CMakeFiles/IrrXML.dir/irrXML.cpp.s

# Object files for target IrrXML
IrrXML_OBJECTS = \
"CMakeFiles/IrrXML.dir/irrXML.cpp.o"

# External object files for target IrrXML
IrrXML_EXTERNAL_OBJECTS =

lib/libIrrXML.dylib: external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/irrXML.cpp.o
lib/libIrrXML.dylib: external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/build.make
lib/libIrrXML.dylib: external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/kodor/proj/3d-render/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../../../lib/libIrrXML.dylib"
	cd /Users/kodor/proj/3d-render/external/assimp/contrib/irrXML && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/IrrXML.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/build: lib/libIrrXML.dylib

.PHONY : external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/build

external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/clean:
	cd /Users/kodor/proj/3d-render/external/assimp/contrib/irrXML && $(CMAKE_COMMAND) -P CMakeFiles/IrrXML.dir/cmake_clean.cmake
.PHONY : external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/clean

external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/depend:
	cd /Users/kodor/proj/3d-render && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kodor/proj/3d-render /Users/kodor/proj/3d-render/external/assimp/contrib/irrXML /Users/kodor/proj/3d-render /Users/kodor/proj/3d-render/external/assimp/contrib/irrXML /Users/kodor/proj/3d-render/external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/depend

