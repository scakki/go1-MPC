# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/tinyobjloader-src"
  "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/tinyobjloader-build"
  "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/tinyobjloader-subbuild/tinyobjloader-populate-prefix"
  "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/tinyobjloader-subbuild/tinyobjloader-populate-prefix/tmp"
  "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/tinyobjloader-subbuild/tinyobjloader-populate-prefix/src/tinyobjloader-populate-stamp"
  "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/tinyobjloader-subbuild/tinyobjloader-populate-prefix/src"
  "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/tinyobjloader-subbuild/tinyobjloader-populate-prefix/src/tinyobjloader-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/tinyobjloader-subbuild/tinyobjloader-populate-prefix/src/tinyobjloader-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/tinyobjloader-subbuild/tinyobjloader-populate-prefix/src/tinyobjloader-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
