# Second-Order Finite Volume Method for Field-Scale Reservoir Simulation

Welcome to the accompanying repository for the paper "A second order finite volume method for field-scale reservoir simulation". The repository contains supplementary data that supports the research and implementation.

## Contents

The repository comprises the following files and folders:
- `midszie_reservoir`, `norne_co2`, `refined_norne`: contains grid, data and schedule for the reservoir examples from the paper
- `build_OPM`: contains build instructions `build_instructions.md` for OPM Flow with the second-order method option, and two scripts `Makefile`, `build_OPM_with_second_order.sh` required for the build
  
## Citation

Please use the following citation when referring to the research presented in the paper:

```
@article{kvashchuk2023,
  title={A Second-Order Finite Volume Method for Field-Scale Reservoir Simulation},
  author={Kvashchuk, Anna and Kl{\"o}fkorn, Robert and Sandve, Tor Harald},
  journal={Transport in Porous Media},
  volume={150},
  number={1},
  pages={109--129},
  year={2023},
  publisher={Springer}
}
```

## Acknowledgments
Many thanks goes to Alexey ([GitHub handle: @alex11818](https://github.com/alex11818)) for refining the original Norne field model and generously providing us with the `refined_norne` model that you can find in this repository.

##
Thank you for visiting this repository. I hope you find it useful.
