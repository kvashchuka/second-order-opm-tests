### Building OPM with Second Order Method

These build instructions have been tested on the Ubuntu 20.04.6 LTS virtual machine from Microsoft Store on Windows 10 Pro.

1. Clone this repository to your desired location:
   ```
   git clone git@github.com:kvashchuka/second-order-opm-tests.git
   ```
2. Navigate to the `second-order-opm-tests/build_OPM/` folder in the terminal:
   ```
   cd second-order-opm-tests/build_OPM/
   ```
3. Run the `Makefile` to build the OPM Flow binaries:
   ```
   make
   ```
   In case `make` is not installed, run `sudo apt install make`.
4. Change the permissions of the `build_OPM_with_second_order.sh` shell script:
   ```
   chmod +x build_OPM_with_second_order.sh
   ```
   This enables the execution of the script.
   
5. Run the `build_OPM_with_second_order.sh` script to build OPM Flow with the second-order method option:
   ```
   ./build_OPM_with_second_order.sh
   ```

Note: Before running these commands, make sure that all necessary dependencies are installed on your machine. If you encounter any issues during the build process, refer to the OPM Flow documentation or seek assistance from the project maintainers.
