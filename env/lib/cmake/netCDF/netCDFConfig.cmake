# NetCDF Configuration Summary
#
# General
#

####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was netCDFConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

####################################################################################

set(NetCDFVersion "4.6.1")
set_and_check(netCDF_INSTALL_PREFIX "${PACKAGE_PREFIX_DIR}")
set_and_check(netCDF_INCLUDE_DIR "${PACKAGE_PREFIX_DIR}/include")
set_and_check(netCDF_LIB_DIR "${PACKAGE_PREFIX_DIR}/lib")

set(netCDF_LIBRARIES netcdf)

# include target information
include("${CMAKE_CURRENT_LIST_DIR}/netCDFTargets.cmake")

# Compiling Options
#
set(netCDF_C_COMPILER "/opt/concourse/worker/volumes/live/a8e407e3-d4ec-44ee-693f-1c4d86eb0106/volume/libnetcdf_1539979321820/_build_env/bin/x86_64-apple-darwin13.4.0-clang")
set(netCDF_C_COMPILER_FLAGS "-march=core2 -mtune=haswell -mssse3 -ftree-vectorize -fPIC -fPIE -fstack-protector-strong -O2 -pipe -I/Users/timb/Documents/syncs/OneDrive - University of Idaho/RESEARCHs/git_repos/conda_envs/env/include -fdebug-prefix-map=${SRC_DIR}=/usr/local/src/conda/${PKG_NAME}-${PKG_VERSION} -fdebug-prefix-map=${PREFIX}=/usr/local/src/conda-prefix -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -march=core2")
set(netCDF_C_CPP_FLAGS " ")
set(netCDF_LDFLAGS "-Wl,-pie -Wl,-headerpad_max_install_names  -Wl,-rpath,/Users/timb/Documents/syncs/OneDrive - University of Idaho/RESEARCHs/git_repos/conda_envs/env/lib -L/Users/timb/Documents/syncs/OneDrive - University of Idaho/RESEARCHs/git_repos/conda_envs/env/lib ")
set(netCDF_AM_CFLAGS "")
set(netCDF_AM_CPPFLAGS "")
set(netCDF_AM_LDFLAGS "")
set(netCDF_SHARED yes)
set(netCDF_STATIC no)

# Features:
#
set(netCDF_HAS_NC2 yes)
set(netCDF_HAS_NC4 yes)
set(netCDF_HAS_HDF4 yes)
set(netCDF_HAS_HDF5 yes)
set(netCDF_HAS_PNETCDF no)
set(netCDF_HAS_PARALLEL no)
set(netCDF_HAS_DAP yes)
set(netCDF_HAS_DAP2 yes)
set(netCDF_HAS_DAP4 yes)
set(netCDF_HAS_DISKLESS yes)
set(netCDF_HAS_MMAP no)
set(netCDF_HAS_JNA no)
