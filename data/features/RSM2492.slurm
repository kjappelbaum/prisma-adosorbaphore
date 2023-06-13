#!/bin/bash
#SBATCH --job-name=RSM2492
#SBATCH --output=RSM2492.out
#SBATCH --error=RSM2492.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/RSM2492.cif --outdir features 
