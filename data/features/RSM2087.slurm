#!/bin/bash
#SBATCH --job-name=RSM2087
#SBATCH --output=RSM2087.out
#SBATCH --error=RSM2087.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/RSM2087.cif --outdir features 
