# CMake generated Testfile for 
# Source directory: /home/leggedrobot/Documents/GitHub/go1-MPC/mujoco_mpc-go1/mjpc/test/ilqg_planner
# Build directory: /home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/test/ilqg_planner
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(iLQGTest.Particle "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/bin/ilqg_test" "--gtest_filter=iLQGTest.Particle")
set_tests_properties(iLQGTest.Particle PROPERTIES  SKIP_REGULAR_EXPRESSION "\\[  SKIPPED \\]" WORKING_DIRECTORY "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco_mpc-go1/mjpc/test" _BACKTRACE_TRIPLES "/home/leggedrobot/anaconda3/lib/python3.9/site-packages/cmake/data/share/cmake-3.26/Modules/GoogleTest.cmake;402;add_test;/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco_mpc-go1/mjpc/test/CMakeLists.txt;31;gtest_add_tests;/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco_mpc-go1/mjpc/test/ilqg_planner/CMakeLists.txt;15;test;/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco_mpc-go1/mjpc/test/ilqg_planner/CMakeLists.txt;0;")
add_test(iLQGTest.BackwardPass "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco-mpc-go1-mjpc-build/bin/backward_pass_test" "--gtest_filter=iLQGTest.BackwardPass")
set_tests_properties(iLQGTest.BackwardPass PROPERTIES  SKIP_REGULAR_EXPRESSION "\\[  SKIPPED \\]" WORKING_DIRECTORY "/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco_mpc-go1/mjpc/test" _BACKTRACE_TRIPLES "/home/leggedrobot/anaconda3/lib/python3.9/site-packages/cmake/data/share/cmake-3.26/Modules/GoogleTest.cmake;402;add_test;/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco_mpc-go1/mjpc/test/CMakeLists.txt;31;gtest_add_tests;/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco_mpc-go1/mjpc/test/ilqg_planner/CMakeLists.txt;18;test;/home/leggedrobot/Documents/GitHub/go1-MPC/mujoco_mpc-go1/mjpc/test/ilqg_planner/CMakeLists.txt;0;")
