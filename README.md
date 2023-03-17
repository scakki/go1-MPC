**MuJoCo MPC (MJPC)** is an interactive application and software framework for real-time predictive control with [MuJoCo](https://mujoco.org/), developed by DeepMind. This repository is a different version of the DeepMind MuJoco MPC repository. This version consists of the Unitree Go1 robot simulation.

MJPC allows the user to easily author and solve complex robotics tasks, and currently supports three sho #ubuntu)
  - [Build Issues](#build-issues)
- [Predictive Control](#predictive-control)
- [Contributing](#contributing)
- [Known Issues](#known-issues)
- [Citation](#citation)
- [Acknowledgments](#acknowledgments)
- [License and Disclaimer](#license-and-disclaimer)

## Graphical User Interface

For a detailed dive of the graphical user interface, see the [MJPC GUI](docs/GUI.md) documentation.

## Installation for Ubuntu 
Additionally, install:
```shell
sudo apt-get install libgl1-mesa-dev libxinerama-dev libxcursor-dev libxrandr-dev libxi-dev ninja-build
```

### Build Issues
If you encounter build issues, please see the [Github Actions](https://github.com/deepmind/mujoco_mpc/.github/workflows/build.yaml). Note, we are using `clang-14`.

## Predictive Control

See the [Predictive Control](docs/OVERVIEW.md) documentation for more information.

## Contributing

See the [Contributing](docs/CONTRIBUTING.md) documentation for more information.

## Known Issues

MJPC is not production-quality software, it is a **research prototype**. There are likely to be missing features and outright bugs. If you find any, please report them in the [issue tracker](https://github.com/deepmind/mujoco_mpc/issues). Below we list some known issues, including items that we are actively working on.

- We have not tested MJPC on Windows, but there should be no issues in principle.
- Task specification, in particular the setting of norms and their parameters in XML, is a bit clunky. We are still iterating on the design.
- The Gradient Descent search step is proportional to the scale of the cost function and requires per-task tuning in order to work well. This is not a bug but a property of vanilla gradient descent. It might be possible to ameliorate this with some sort of gradient normalisation, but we have not investigated this thoroughly.

## Citation

If you use MJPC in your work, please cite our accompanying [preprint](https://arxiv.org/abs/2212.00541):

```bibtex
@article{howell2022,
  title={{Predictive Sampling: Real-time Behaviour Synthesis with MuJoCo}},
  author={Howell, Taylor and Gileadi, Nimrod and Tunyasuvunakool, Saran and Zakka, Kevin and Erez, Tom and Tassa, Yuval},
  archivePrefix={arXiv},
  eprint={2212.00541},
  primaryClass={cs.RO},
  url={https://arxiv.org/abs/2212.00541},
  doi={10.48550/arXiv.2212.00541},
  year={2022},
  month={dec}
}
```

## Acknowledgments

The main effort required to make this repository publicly available was undertaken by [Taylor Howell](https://thowell.github.io/) and the DeepMind Robotics Simulation team.

## License and Disclaimer

All other content is Copyright 2022 DeepMind Technologies Limited and licensed under the Apache License, Version 2.0. A copy of this license is provided in the top-level LICENSE file in this repository. You can also obtain it from https://www.apache.org/licenses/LICENSE-2.0.

This is not an officially supported Google product.
