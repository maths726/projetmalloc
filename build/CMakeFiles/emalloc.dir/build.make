# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /user/1/gouloisw/Documents/projetmalloc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /user/1/gouloisw/Documents/projetmalloc/build

# Include any dependencies generated for this target.
include CMakeFiles/emalloc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/emalloc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/emalloc.dir/flags.make

CMakeFiles/emalloc.dir/src/mem.c.o: CMakeFiles/emalloc.dir/flags.make
CMakeFiles/emalloc.dir/src/mem.c.o: ../src/mem.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/1/gouloisw/Documents/projetmalloc/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/emalloc.dir/src/mem.c.o"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/emalloc.dir/src/mem.c.o   -c /user/1/gouloisw/Documents/projetmalloc/src/mem.c

CMakeFiles/emalloc.dir/src/mem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emalloc.dir/src/mem.c.i"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /user/1/gouloisw/Documents/projetmalloc/src/mem.c > CMakeFiles/emalloc.dir/src/mem.c.i

CMakeFiles/emalloc.dir/src/mem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emalloc.dir/src/mem.c.s"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /user/1/gouloisw/Documents/projetmalloc/src/mem.c -o CMakeFiles/emalloc.dir/src/mem.c.s

CMakeFiles/emalloc.dir/src/mem.c.o.requires:
.PHONY : CMakeFiles/emalloc.dir/src/mem.c.o.requires

CMakeFiles/emalloc.dir/src/mem.c.o.provides: CMakeFiles/emalloc.dir/src/mem.c.o.requires
	$(MAKE) -f CMakeFiles/emalloc.dir/build.make CMakeFiles/emalloc.dir/src/mem.c.o.provides.build
.PHONY : CMakeFiles/emalloc.dir/src/mem.c.o.provides

CMakeFiles/emalloc.dir/src/mem.c.o.provides.build: CMakeFiles/emalloc.dir/src/mem.c.o

CMakeFiles/emalloc.dir/src/mem_internals.c.o: CMakeFiles/emalloc.dir/flags.make
CMakeFiles/emalloc.dir/src/mem_internals.c.o: ../src/mem_internals.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/1/gouloisw/Documents/projetmalloc/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/emalloc.dir/src/mem_internals.c.o"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/emalloc.dir/src/mem_internals.c.o   -c /user/1/gouloisw/Documents/projetmalloc/src/mem_internals.c

CMakeFiles/emalloc.dir/src/mem_internals.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emalloc.dir/src/mem_internals.c.i"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /user/1/gouloisw/Documents/projetmalloc/src/mem_internals.c > CMakeFiles/emalloc.dir/src/mem_internals.c.i

CMakeFiles/emalloc.dir/src/mem_internals.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emalloc.dir/src/mem_internals.c.s"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /user/1/gouloisw/Documents/projetmalloc/src/mem_internals.c -o CMakeFiles/emalloc.dir/src/mem_internals.c.s

CMakeFiles/emalloc.dir/src/mem_internals.c.o.requires:
.PHONY : CMakeFiles/emalloc.dir/src/mem_internals.c.o.requires

CMakeFiles/emalloc.dir/src/mem_internals.c.o.provides: CMakeFiles/emalloc.dir/src/mem_internals.c.o.requires
	$(MAKE) -f CMakeFiles/emalloc.dir/build.make CMakeFiles/emalloc.dir/src/mem_internals.c.o.provides.build
.PHONY : CMakeFiles/emalloc.dir/src/mem_internals.c.o.provides

CMakeFiles/emalloc.dir/src/mem_internals.c.o.provides.build: CMakeFiles/emalloc.dir/src/mem_internals.c.o

CMakeFiles/emalloc.dir/src/mem_small.c.o: CMakeFiles/emalloc.dir/flags.make
CMakeFiles/emalloc.dir/src/mem_small.c.o: ../src/mem_small.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/1/gouloisw/Documents/projetmalloc/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/emalloc.dir/src/mem_small.c.o"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/emalloc.dir/src/mem_small.c.o   -c /user/1/gouloisw/Documents/projetmalloc/src/mem_small.c

CMakeFiles/emalloc.dir/src/mem_small.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emalloc.dir/src/mem_small.c.i"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /user/1/gouloisw/Documents/projetmalloc/src/mem_small.c > CMakeFiles/emalloc.dir/src/mem_small.c.i

CMakeFiles/emalloc.dir/src/mem_small.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emalloc.dir/src/mem_small.c.s"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /user/1/gouloisw/Documents/projetmalloc/src/mem_small.c -o CMakeFiles/emalloc.dir/src/mem_small.c.s

CMakeFiles/emalloc.dir/src/mem_small.c.o.requires:
.PHONY : CMakeFiles/emalloc.dir/src/mem_small.c.o.requires

CMakeFiles/emalloc.dir/src/mem_small.c.o.provides: CMakeFiles/emalloc.dir/src/mem_small.c.o.requires
	$(MAKE) -f CMakeFiles/emalloc.dir/build.make CMakeFiles/emalloc.dir/src/mem_small.c.o.provides.build
.PHONY : CMakeFiles/emalloc.dir/src/mem_small.c.o.provides

CMakeFiles/emalloc.dir/src/mem_small.c.o.provides.build: CMakeFiles/emalloc.dir/src/mem_small.c.o

CMakeFiles/emalloc.dir/src/mem_medium.c.o: CMakeFiles/emalloc.dir/flags.make
CMakeFiles/emalloc.dir/src/mem_medium.c.o: ../src/mem_medium.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/1/gouloisw/Documents/projetmalloc/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/emalloc.dir/src/mem_medium.c.o"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/emalloc.dir/src/mem_medium.c.o   -c /user/1/gouloisw/Documents/projetmalloc/src/mem_medium.c

CMakeFiles/emalloc.dir/src/mem_medium.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emalloc.dir/src/mem_medium.c.i"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /user/1/gouloisw/Documents/projetmalloc/src/mem_medium.c > CMakeFiles/emalloc.dir/src/mem_medium.c.i

CMakeFiles/emalloc.dir/src/mem_medium.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emalloc.dir/src/mem_medium.c.s"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /user/1/gouloisw/Documents/projetmalloc/src/mem_medium.c -o CMakeFiles/emalloc.dir/src/mem_medium.c.s

CMakeFiles/emalloc.dir/src/mem_medium.c.o.requires:
.PHONY : CMakeFiles/emalloc.dir/src/mem_medium.c.o.requires

CMakeFiles/emalloc.dir/src/mem_medium.c.o.provides: CMakeFiles/emalloc.dir/src/mem_medium.c.o.requires
	$(MAKE) -f CMakeFiles/emalloc.dir/build.make CMakeFiles/emalloc.dir/src/mem_medium.c.o.provides.build
.PHONY : CMakeFiles/emalloc.dir/src/mem_medium.c.o.provides

CMakeFiles/emalloc.dir/src/mem_medium.c.o.provides.build: CMakeFiles/emalloc.dir/src/mem_medium.c.o

CMakeFiles/emalloc.dir/src/mem_large.c.o: CMakeFiles/emalloc.dir/flags.make
CMakeFiles/emalloc.dir/src/mem_large.c.o: ../src/mem_large.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/1/gouloisw/Documents/projetmalloc/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/emalloc.dir/src/mem_large.c.o"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/emalloc.dir/src/mem_large.c.o   -c /user/1/gouloisw/Documents/projetmalloc/src/mem_large.c

CMakeFiles/emalloc.dir/src/mem_large.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emalloc.dir/src/mem_large.c.i"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /user/1/gouloisw/Documents/projetmalloc/src/mem_large.c > CMakeFiles/emalloc.dir/src/mem_large.c.i

CMakeFiles/emalloc.dir/src/mem_large.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emalloc.dir/src/mem_large.c.s"
	/opt/rh/devtoolset-8/root/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /user/1/gouloisw/Documents/projetmalloc/src/mem_large.c -o CMakeFiles/emalloc.dir/src/mem_large.c.s

CMakeFiles/emalloc.dir/src/mem_large.c.o.requires:
.PHONY : CMakeFiles/emalloc.dir/src/mem_large.c.o.requires

CMakeFiles/emalloc.dir/src/mem_large.c.o.provides: CMakeFiles/emalloc.dir/src/mem_large.c.o.requires
	$(MAKE) -f CMakeFiles/emalloc.dir/build.make CMakeFiles/emalloc.dir/src/mem_large.c.o.provides.build
.PHONY : CMakeFiles/emalloc.dir/src/mem_large.c.o.provides

CMakeFiles/emalloc.dir/src/mem_large.c.o.provides.build: CMakeFiles/emalloc.dir/src/mem_large.c.o

# Object files for target emalloc
emalloc_OBJECTS = \
"CMakeFiles/emalloc.dir/src/mem.c.o" \
"CMakeFiles/emalloc.dir/src/mem_internals.c.o" \
"CMakeFiles/emalloc.dir/src/mem_small.c.o" \
"CMakeFiles/emalloc.dir/src/mem_medium.c.o" \
"CMakeFiles/emalloc.dir/src/mem_large.c.o"

# External object files for target emalloc
emalloc_EXTERNAL_OBJECTS =

libemalloc.so: CMakeFiles/emalloc.dir/src/mem.c.o
libemalloc.so: CMakeFiles/emalloc.dir/src/mem_internals.c.o
libemalloc.so: CMakeFiles/emalloc.dir/src/mem_small.c.o
libemalloc.so: CMakeFiles/emalloc.dir/src/mem_medium.c.o
libemalloc.so: CMakeFiles/emalloc.dir/src/mem_large.c.o
libemalloc.so: CMakeFiles/emalloc.dir/build.make
libemalloc.so: CMakeFiles/emalloc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library libemalloc.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/emalloc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/emalloc.dir/build: libemalloc.so
.PHONY : CMakeFiles/emalloc.dir/build

CMakeFiles/emalloc.dir/requires: CMakeFiles/emalloc.dir/src/mem.c.o.requires
CMakeFiles/emalloc.dir/requires: CMakeFiles/emalloc.dir/src/mem_internals.c.o.requires
CMakeFiles/emalloc.dir/requires: CMakeFiles/emalloc.dir/src/mem_small.c.o.requires
CMakeFiles/emalloc.dir/requires: CMakeFiles/emalloc.dir/src/mem_medium.c.o.requires
CMakeFiles/emalloc.dir/requires: CMakeFiles/emalloc.dir/src/mem_large.c.o.requires
.PHONY : CMakeFiles/emalloc.dir/requires

CMakeFiles/emalloc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/emalloc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/emalloc.dir/clean

CMakeFiles/emalloc.dir/depend:
	cd /user/1/gouloisw/Documents/projetmalloc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /user/1/gouloisw/Documents/projetmalloc /user/1/gouloisw/Documents/projetmalloc /user/1/gouloisw/Documents/projetmalloc/build /user/1/gouloisw/Documents/projetmalloc/build /user/1/gouloisw/Documents/projetmalloc/build/CMakeFiles/emalloc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/emalloc.dir/depend

