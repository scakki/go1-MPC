# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/mujoco-src"
  "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/mujoco-build"
  "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/mujoco-subbuild/mujoco-populate-prefix"
  "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/mujoco-subbuild/mujoco-populate-prefix/tmp"
  "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/mujoco-subbuild/mujoco-populate-prefix/src/mujoco-populate-stamp"
  "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/mujoco-subbuild/mujoco-populate-prefix/src"
  "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/mujoco-subbuild/mujoco-populate-prefix/src/mujoco-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/mujoco-subbuild/mujoco-populate-prefix/src/mujoco-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/_deps/mujoco-subbuild/mujoco-populate-prefix/src/mujoco-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
