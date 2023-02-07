#!/bin/bash

#SBATCH --job-name=papi
#SBATCH --output=log.txt
#SBATCH --ntasks-per-node=1
#SBATCH -N 1
#SBATCH --time=00:30:00
#SBATCH -p short
srun ./run_with_papi.sh