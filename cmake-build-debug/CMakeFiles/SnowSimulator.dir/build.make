# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.14

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\JetBrains\CLion\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = D:\JetBrains\CLion\bin\cmake\win\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\Projects\SnowSimulator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\Projects\SnowSimulator\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SnowSimulator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SnowSimulator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SnowSimulator.dir/flags.make

CMakeFiles/SnowSimulator.dir/main.cpp.obj: CMakeFiles/SnowSimulator.dir/flags.make
CMakeFiles/SnowSimulator.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Projects\SnowSimulator\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SnowSimulator.dir/main.cpp.obj"
	D:\TDM-GCC\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\SnowSimulator.dir\main.cpp.obj -c E:\Projects\SnowSimulator\main.cpp

CMakeFiles/SnowSimulator.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SnowSimulator.dir/main.cpp.i"
	D:\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\Projects\SnowSimulator\main.cpp > CMakeFiles\SnowSimulator.dir\main.cpp.i

CMakeFiles/SnowSimulator.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SnowSimulator.dir/main.cpp.s"
	D:\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\Projects\SnowSimulator\main.cpp -o CMakeFiles\SnowSimulator.dir\main.cpp.s

CMakeFiles/SnowSimulator.dir/glad.c.obj: CMakeFiles/SnowSimulator.dir/flags.make
CMakeFiles/SnowSimulator.dir/glad.c.obj: ../glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Projects\SnowSimulator\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/SnowSimulator.dir/glad.c.obj"
	D:\TDM-GCC\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\SnowSimulator.dir\glad.c.obj   -c E:\Projects\SnowSimulator\glad.c

CMakeFiles/SnowSimulator.dir/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SnowSimulator.dir/glad.c.i"
	D:\TDM-GCC\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Projects\SnowSimulator\glad.c > CMakeFiles\SnowSimulator.dir\glad.c.i

CMakeFiles/SnowSimulator.dir/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SnowSimulator.dir/glad.c.s"
	D:\TDM-GCC\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\Projects\SnowSimulator\glad.c -o CMakeFiles\SnowSimulator.dir\glad.c.s

CMakeFiles/SnowSimulator.dir/Particle.cpp.obj: CMakeFiles/SnowSimulator.dir/flags.make
CMakeFiles/SnowSimulator.dir/Particle.cpp.obj: ../Particle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Projects\SnowSimulator\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SnowSimulator.dir/Particle.cpp.obj"
	D:\TDM-GCC\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\SnowSimulator.dir\Particle.cpp.obj -c E:\Projects\SnowSimulator\Particle.cpp

CMakeFiles/SnowSimulator.dir/Particle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SnowSimulator.dir/Particle.cpp.i"
	D:\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\Projects\SnowSimulator\Particle.cpp > CMakeFiles\SnowSimulator.dir\Particle.cpp.i

CMakeFiles/SnowSimulator.dir/Particle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SnowSimulator.dir/Particle.cpp.s"
	D:\TDM-GCC\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\Projects\SnowSimulator\Particle.cpp -o CMakeFiles\SnowSimulator.dir\Particle.cpp.s

# Object files for target SnowSimulator
SnowSimulator_OBJECTS = \
"CMakeFiles/SnowSimulator.dir/main.cpp.obj" \
"CMakeFiles/SnowSimulator.dir/glad.c.obj" \
"CMakeFiles/SnowSimulator.dir/Particle.cpp.obj"

# External object files for target SnowSimulator
SnowSimulator_EXTERNAL_OBJECTS =

SnowSimulator.exe: CMakeFiles/SnowSimulator.dir/main.cpp.obj
SnowSimulator.exe: CMakeFiles/SnowSimulator.dir/glad.c.obj
SnowSimulator.exe: CMakeFiles/SnowSimulator.dir/Particle.cpp.obj
SnowSimulator.exe: CMakeFiles/SnowSimulator.dir/build.make
SnowSimulator.exe: CMakeFiles/SnowSimulator.dir/linklibs.rsp
SnowSimulator.exe: CMakeFiles/SnowSimulator.dir/objects1.rsp
SnowSimulator.exe: CMakeFiles/SnowSimulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\Projects\SnowSimulator\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable SnowSimulator.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\SnowSimulator.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SnowSimulator.dir/build: SnowSimulator.exe

.PHONY : CMakeFiles/SnowSimulator.dir/build

CMakeFiles/SnowSimulator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\SnowSimulator.dir\cmake_clean.cmake
.PHONY : CMakeFiles/SnowSimulator.dir/clean

CMakeFiles/SnowSimulator.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\Projects\SnowSimulator E:\Projects\SnowSimulator E:\Projects\SnowSimulator\cmake-build-debug E:\Projects\SnowSimulator\cmake-build-debug E:\Projects\SnowSimulator\cmake-build-debug\CMakeFiles\SnowSimulator.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SnowSimulator.dir/depend

