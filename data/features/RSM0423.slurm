#!/bin/bash
#SBATCH --job-name=RSM0423
#SBATCH --output=RSM0423.out
#SBATCH --error=RSM0423.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/RSM0423.cif --outdir features 
