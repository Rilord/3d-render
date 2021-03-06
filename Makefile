# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/mac-dev-env/cmake-3.12.3/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/mac-dev-env/cmake-3.12.3/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/mac-dev-env/cmake-3.12.3/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/mac-dev-env/cmake-3.12.3/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/mac-dev-env/cmake-3.12.3/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/mac-dev-env/cmake-3.12.3/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/mac-dev-env/cmake-3.12.3/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/mac-dev-env/cmake-3.12.3/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\" \"assimp-dev\" \"libassimp5.0.0-dev\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components

.PHONY : list_install_components/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/kodor/proj/3d-render/CMakeFiles /Users/kodor/proj/3d-render/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/kodor/proj/3d-render/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named imgui

# Build rule for target.
imgui: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 imgui
.PHONY : imgui

# fast build rule for target.
imgui/fast:
	$(MAKE) -f CMakeFiles/imgui.dir/build.make CMakeFiles/imgui.dir/build
.PHONY : imgui/fast

#=============================================================================
# Target rules for targets named 3d

# Build rule for target.
3d: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 3d
.PHONY : 3d

# fast build rule for target.
3d/fast:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/build
.PHONY : 3d/fast

#=============================================================================
# Target rules for targets named uninstall

# Build rule for target.
uninstall: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 uninstall
.PHONY : uninstall

# fast build rule for target.
uninstall/fast:
	$(MAKE) -f external/assimp/CMakeFiles/uninstall.dir/build.make external/assimp/CMakeFiles/uninstall.dir/build
.PHONY : uninstall/fast

#=============================================================================
# Target rules for targets named IrrXML

# Build rule for target.
IrrXML: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 IrrXML
.PHONY : IrrXML

# fast build rule for target.
IrrXML/fast:
	$(MAKE) -f external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/build.make external/assimp/contrib/irrXML/CMakeFiles/IrrXML.dir/build
.PHONY : IrrXML/fast

#=============================================================================
# Target rules for targets named assimp

# Build rule for target.
assimp: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 assimp
.PHONY : assimp

# fast build rule for target.
assimp/fast:
	$(MAKE) -f external/assimp/code/CMakeFiles/assimp.dir/build.make external/assimp/code/CMakeFiles/assimp.dir/build
.PHONY : assimp/fast

#=============================================================================
# Target rules for targets named unit

# Build rule for target.
unit: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 unit
.PHONY : unit

# fast build rule for target.
unit/fast:
	$(MAKE) -f external/assimp/test/CMakeFiles/unit.dir/build.make external/assimp/test/CMakeFiles/unit.dir/build
.PHONY : unit/fast

external/imgui/imgui.o: external/imgui/imgui.cpp.o

.PHONY : external/imgui/imgui.o

# target to build an object file
external/imgui/imgui.cpp.o:
	$(MAKE) -f CMakeFiles/imgui.dir/build.make CMakeFiles/imgui.dir/external/imgui/imgui.cpp.o
.PHONY : external/imgui/imgui.cpp.o

external/imgui/imgui.i: external/imgui/imgui.cpp.i

.PHONY : external/imgui/imgui.i

# target to preprocess a source file
external/imgui/imgui.cpp.i:
	$(MAKE) -f CMakeFiles/imgui.dir/build.make CMakeFiles/imgui.dir/external/imgui/imgui.cpp.i
.PHONY : external/imgui/imgui.cpp.i

external/imgui/imgui.s: external/imgui/imgui.cpp.s

.PHONY : external/imgui/imgui.s

# target to generate assembly for a file
external/imgui/imgui.cpp.s:
	$(MAKE) -f CMakeFiles/imgui.dir/build.make CMakeFiles/imgui.dir/external/imgui/imgui.cpp.s
.PHONY : external/imgui/imgui.cpp.s

external/imgui/imgui_widgets.o: external/imgui/imgui_widgets.cpp.o

.PHONY : external/imgui/imgui_widgets.o

# target to build an object file
external/imgui/imgui_widgets.cpp.o:
	$(MAKE) -f CMakeFiles/imgui.dir/build.make CMakeFiles/imgui.dir/external/imgui/imgui_widgets.cpp.o
.PHONY : external/imgui/imgui_widgets.cpp.o

external/imgui/imgui_widgets.i: external/imgui/imgui_widgets.cpp.i

.PHONY : external/imgui/imgui_widgets.i

# target to preprocess a source file
external/imgui/imgui_widgets.cpp.i:
	$(MAKE) -f CMakeFiles/imgui.dir/build.make CMakeFiles/imgui.dir/external/imgui/imgui_widgets.cpp.i
.PHONY : external/imgui/imgui_widgets.cpp.i

external/imgui/imgui_widgets.s: external/imgui/imgui_widgets.cpp.s

.PHONY : external/imgui/imgui_widgets.s

# target to generate assembly for a file
external/imgui/imgui_widgets.cpp.s:
	$(MAKE) -f CMakeFiles/imgui.dir/build.make CMakeFiles/imgui.dir/external/imgui/imgui_widgets.cpp.s
.PHONY : external/imgui/imgui_widgets.cpp.s

src/camera.o: src/camera.cpp.o

.PHONY : src/camera.o

# target to build an object file
src/camera.cpp.o:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/camera.cpp.o
.PHONY : src/camera.cpp.o

src/camera.i: src/camera.cpp.i

.PHONY : src/camera.i

# target to preprocess a source file
src/camera.cpp.i:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/camera.cpp.i
.PHONY : src/camera.cpp.i

src/camera.s: src/camera.cpp.s

.PHONY : src/camera.s

# target to generate assembly for a file
src/camera.cpp.s:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/camera.cpp.s
.PHONY : src/camera.cpp.s

src/loader.o: src/loader.cpp.o

.PHONY : src/loader.o

# target to build an object file
src/loader.cpp.o:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/loader.cpp.o
.PHONY : src/loader.cpp.o

src/loader.i: src/loader.cpp.i

.PHONY : src/loader.i

# target to preprocess a source file
src/loader.cpp.i:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/loader.cpp.i
.PHONY : src/loader.cpp.i

src/loader.s: src/loader.cpp.s

.PHONY : src/loader.s

# target to generate assembly for a file
src/loader.cpp.s:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/loader.cpp.s
.PHONY : src/loader.cpp.s

src/main.o: src/main.cpp.o

.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i

.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s

.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

src/mesh.o: src/mesh.cpp.o

.PHONY : src/mesh.o

# target to build an object file
src/mesh.cpp.o:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/mesh.cpp.o
.PHONY : src/mesh.cpp.o

src/mesh.i: src/mesh.cpp.i

.PHONY : src/mesh.i

# target to preprocess a source file
src/mesh.cpp.i:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/mesh.cpp.i
.PHONY : src/mesh.cpp.i

src/mesh.s: src/mesh.cpp.s

.PHONY : src/mesh.s

# target to generate assembly for a file
src/mesh.cpp.s:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/mesh.cpp.s
.PHONY : src/mesh.cpp.s

src/model.o: src/model.cpp.o

.PHONY : src/model.o

# target to build an object file
src/model.cpp.o:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/model.cpp.o
.PHONY : src/model.cpp.o

src/model.i: src/model.cpp.i

.PHONY : src/model.i

# target to preprocess a source file
src/model.cpp.i:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/model.cpp.i
.PHONY : src/model.cpp.i

src/model.s: src/model.cpp.s

.PHONY : src/model.s

# target to generate assembly for a file
src/model.cpp.s:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/model.cpp.s
.PHONY : src/model.cpp.s

src/shader.o: src/shader.cpp.o

.PHONY : src/shader.o

# target to build an object file
src/shader.cpp.o:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/shader.cpp.o
.PHONY : src/shader.cpp.o

src/shader.i: src/shader.cpp.i

.PHONY : src/shader.i

# target to preprocess a source file
src/shader.cpp.i:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/shader.cpp.i
.PHONY : src/shader.cpp.i

src/shader.s: src/shader.cpp.s

.PHONY : src/shader.s

# target to generate assembly for a file
src/shader.cpp.s:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/shader.cpp.s
.PHONY : src/shader.cpp.s

src/window.o: src/window.cpp.o

.PHONY : src/window.o

# target to build an object file
src/window.cpp.o:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/window.cpp.o
.PHONY : src/window.cpp.o

src/window.i: src/window.cpp.i

.PHONY : src/window.i

# target to preprocess a source file
src/window.cpp.i:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/window.cpp.i
.PHONY : src/window.cpp.i

src/window.s: src/window.cpp.s

.PHONY : src/window.s

# target to generate assembly for a file
src/window.cpp.s:
	$(MAKE) -f CMakeFiles/3d.dir/build.make CMakeFiles/3d.dir/src/window.cpp.s
.PHONY : src/window.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... install"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... imgui"
	@echo "... 3d"
	@echo "... list_install_components"
	@echo "... uninstall"
	@echo "... IrrXML"
	@echo "... assimp"
	@echo "... unit"
	@echo "... external/imgui/imgui.o"
	@echo "... external/imgui/imgui.i"
	@echo "... external/imgui/imgui.s"
	@echo "... external/imgui/imgui_widgets.o"
	@echo "... external/imgui/imgui_widgets.i"
	@echo "... external/imgui/imgui_widgets.s"
	@echo "... src/camera.o"
	@echo "... src/camera.i"
	@echo "... src/camera.s"
	@echo "... src/loader.o"
	@echo "... src/loader.i"
	@echo "... src/loader.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/mesh.o"
	@echo "... src/mesh.i"
	@echo "... src/mesh.s"
	@echo "... src/model.o"
	@echo "... src/model.i"
	@echo "... src/model.s"
	@echo "... src/shader.o"
	@echo "... src/shader.i"
	@echo "... src/shader.s"
	@echo "... src/window.o"
	@echo "... src/window.i"
	@echo "... src/window.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

