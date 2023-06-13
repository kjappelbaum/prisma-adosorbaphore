#!/bin/bash
#SBATCH --job-name=RSM3396
#SBATCH --output=RSM3396.out
#SBATCH --error=RSM3396.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/RSM3396.cif --outdir features 
