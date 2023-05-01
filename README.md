# go1-MPC

**MuJoCo MPC (MJPC)** is an interactive application and software framework for real-time predictive control with [MuJoCo](https://mujoco.org/), developed by DeepMind. MJPC allows the user to easily author and solve complex robotics tasks, and currently supports three shooting-based planners: derivative-based iLQG and Gradient Descent, and a simple yet very competitive derivative-free method called Predictive Sampling.
https://github.com/deepmind/mujoco_mpc (For detailed usage of MuJoCo MPC refer this link)

The go1-MPC repo is based on MuJoCo MPC and additionally includes Unitree 0o1 robot simulation. 

## Compiler setup

Build in VSCode.
We used GCC 11 compiler.

## Required Changes to be done for Data Collection

Navigate to build/_deps/mujoco-src/src/engine/engine_print.c in VSCode. In mj_printFormattedData, line 744, change file mode from "wt" (write) to "a" (append).

## Usage of go1-MPC

To run the simulation;
```
cd mujoco_mpc_v2_DC/mjpc/build
./mjpc
```
or use cmake tool to debug from VSCode while will run the target file(mjpc).

## GUI usage 

Below mentioned are a few key features.
- **File** has the options to print model and print data.
- In **Options** enable the Right UI to see the joint and control data.
