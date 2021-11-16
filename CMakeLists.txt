cmake_minimum_required(VERSION 3.10)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
set(CMAKE_CXX_COMPILER_ARCHITECTURE_ID, "x64")

include(dependencies)

find_depend_packages()

if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
    message("${Boost_INCLUDE_DIRS}")
else()
    message("Can't find boost")
endif()

project(toy VERSION 1.0)

if (WIN32)
elseif(UNIX)
  set_target_properties(toy PROPERTIES LINK_LIBRARIES -pthread)
endif()

add_executable(toy src/main.cpp)