# go1-MPC

**MuJoCo MPC (MJPC)** is an interactive application and software framework for real-time predictive control with [MuJoCo](https://mujoco.org/), developed by DeepMind. MJPC allows the user to easily author and solve complex robotics tasks, and currently supports three shooting-based planners: derivative-based iLQG and Gradient Descent, and a simple yet very competitive derivative-free method called Predictive Sampling.
https://github.com/deepmind/mujoco_mpc (For detailed usage of MuJoCo MPC refer this link)

The go1-MPC repo is based on MuJoCo MPC and additionally includes Unitree 0o1 robot simulation. 

## go1-MPC usage

**mujoco_mpc-go1** is the source file. Any changes to the code should be done here.

**mujoco-mpc-go1-mjpc-build** is the build file of mujoco_mpc-go1\mjpc. If any changes made to the source file, it can built as follows
```
cd mujoco-mpc-go1-mjpc-build 
cmake ..\mujoco_mpc-go1\mjpc .
make 
cd bin\
```

To run the simulation;
```
cd mujoco-mpc-go1-mjpc-build
.\mjpc
```

## GUI usage 

Below mentioned are a few key features.
- **File** has the options to print model and print data.
- In **Options** enable the Right UI to see the joint and control data.
