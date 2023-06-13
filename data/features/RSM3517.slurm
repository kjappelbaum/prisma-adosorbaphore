#!/bin/bash
#SBATCH --job-name=RSM3517
#SBATCH --output=RSM3517.out
#SBATCH --error=RSM3517.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/RSM3517.cif --outdir features 
