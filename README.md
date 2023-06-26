# Enhanced-Active-Lane-Consolidation

Enhanced-Active-Lane-Consolidation is an LLVM pass that improves vectorization by reordering active lanes and doing data-permutation. Current implementation targets ARM-SVE architecture.

## Step by step guide to reproduce results:

### Prerequisites
You need to have followings installed on your system:

- [LLVM](https://llvm.org/docs/GettingStarted.html)
- [Clang](https://llvm.org/docs/GettingStarted.html)
- [Arm GNU Toolchain](https://developer.arm.com/Tools%20and%20Software/GNU%20Toolchain)
- [PAPI](https://hpc.llnl.gov/software/development-environment-software/papi-performance-application-programming-interface)
- [Python](https://www.python.org/downloads)
This tutorial supposes you do cross-sompilation on a none-ARM machine for an ARM-SVE target. 

### Applying the pass to micro-bechmarks
- go to Transformation-Pass/Vectorizer-Pass/test directory
- open run_pass.sh and chage following variables to point to their installation dirctory on your machine:
 - LLVM_BUILD_DIR should point to LLVM installations directory
 - GCC_TOOLCHAIN should point to Arm GNU Toolchain directory
 - PAPI_DIR should point to Arm PAPI installation Toolchain directory
- Kernels for microbenchamrks can be found in: Transformation-Pass/Vectorizer-Pass/test/ookami_results/Paper_results/
- Run the pass by executing following command in Transformation-Pass/Vectorizer-Pass/test directory:
 - ./run_pass [address to the Kernel] [output file name]
- Result will be 2 object files, one with the pass being applied and the scalar version of the code (not vectorized)
- Move these files to the ARM-SVE machine.
- Create a directory named result by executing mkdir results
- Use Transformation-Pass/Vectorizer-Pass/test/ookami_results/Scripts/compile_all.sh to compile object files into executables
- Use Transformation-Pass/Vectorizer-Pass/test/ookami_results/Scripts/run_with_papi.sh to run the executables
- Running the script will be give you results of 100 runs stored in the results directory
- Execute Transformation-Pass/Vectorizer-Pass/test/ookami_results/Scripts/Script.py to generate summerized csv files in the results directory

Note: you need to have Clang and PAPI installed on the ARM machine as well and specify installation directory in compile_all.sh and run_with_papi.sh
