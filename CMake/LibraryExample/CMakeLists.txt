cmake_minimum_required(VERSION 3.21)

project(
  mylib
  VERSION 1.0.0
  DESCRIPTION "Template for C++ library built with CMake"
  HOMEPAGE_URL "https://github.com/vnstr/developer-help"
  LANGUAGES CXX
  )

#-------------------------------------------------------------------------------
# General settings and options
#-------------------------------------------------------------------------------

option(MYLIB_BUILD_TESTS "Build mylib tests" OFF)

option(
  MYLIB_INSTALL
  "Generate target for installing mylib"
  ${PROJECT_IS_TOP_LEVEL}
  )

add_library(mylib) # initialized below
add_library(mylib::mylib ALIAS mylib)

#-------------------------------------------------------------------------------
# mylib dependencies
#-------------------------------------------------------------------------------

# Search for your dependencies here

#-------------------------------------------------------------------------------
# mylib sources
#-------------------------------------------------------------------------------

set(
  public_headers
  include/mylib/mylib.h
  )

set(
  sources
  ${public_headers}
  src/mylib.cpp
  )

source_group(TREE "${CMAKE_CURRENT_SOURCE_DIR}" FILES ${sources})

#-------------------------------------------------------------------------------
# mylib target
#-------------------------------------------------------------------------------

include(CMakePackageConfigHelpers)

target_sources(mylib PRIVATE ${sources})

target_include_directories(
  mylib
  PUBLIC
  "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>"
  "$<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}/include>"
  )

set_target_properties(
  mylib
  PROPERTIES
  SOVERSION ${PROJECT_VERSION_MAJOR}
  VERSION ${PROJECT_VERSION}
  )

if(MYLIB_INSTALL AND NOT CMAKE_SKIP_INSTALL_RULES)
  set(MYLIB_INSTALL_CMAKEDIR "${CMAKE_INSTALL_PREFIX}/cmake/mylib")

  message(STATUS "CMAKE_INSTALL_PREFIX: \"${CMAKE_INSTALL_PREFIX}\"")
  message(STATUS "CMAKE_INSTALL_INCLUDEDIR: \"${CMAKE_INSTALL_INCLUDEDIR}\"")
  message(STATUS "MYLIB_INSTALL_CMAKEDIR: \"${MYLIB_INSTALL_CMAKEDIR}\"")

  configure_package_config_file(
    cmake/mylib-config.cmake.in
    mylib-config.cmake
    INSTALL_DESTINATION
    "${MYLIB_INSTALL_CMAKEDIR}"
    )

  write_basic_package_version_file(
    mylib-config-version.cmake
    COMPATIBILITY
    SameMajorVersion
    )

  install(
    TARGETS
    mylib
    EXPORT
    mylib_export
    RUNTIME
    COMPONENT
    mylib
    LIBRARY
    COMPONENT
    mylib
    NAMELINK_COMPONENT
    mylib-dev
    ARCHIVE
    COMPONENT
    mylib-dev
    INCLUDES
    DESTINATION
    "${CMAKE_INSTALL_INCLUDEDIR}"
    )

  install(
    DIRECTORY
    include/
    TYPE
    INCLUDE
    COMPONENT
    mylib-dev
    )

  set(targets_file "mylib-shared-targets.cmake")

  if(BUILD_SHARED_LIBS)
    set(targets_file "mylib-shared-targets.cmake")
  else()
    set(targets_file "mylib-static-targets.cmake")
  endif()

  install(
    EXPORT
    mylib_export
    COMPONENT
    mylib-dev
    FILE
    "${targets_file}"
    DESTINATION
    "${MYLIB_INSTALL_CMAKEDIR}"
    NAMESPACE mylib::
    )

  install(
    FILES
    "${CMAKE_CURRENT_BINARY_DIR}/mylib-config.cmake"
    "${CMAKE_CURRENT_BINARY_DIR}/mylib-config-version.cmake"
    COMPONENT
    mylib-dev
    DESTINATION
    "${MYLIB_INSTALL_CMAKEDIR}"
    )
endif()
