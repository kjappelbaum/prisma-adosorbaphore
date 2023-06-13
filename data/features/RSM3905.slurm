#!/bin/bash
#SBATCH --job-name=RSM3905
#SBATCH --output=RSM3905.out
#SBATCH --error=RSM3905.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/RSM3905.cif --outdir features 
