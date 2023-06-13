#!/bin/bash
#SBATCH --job-name=RSM1431
#SBATCH --output=RSM1431.out
#SBATCH --error=RSM1431.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/RSM1431.cif --outdir features 
