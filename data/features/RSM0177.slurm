#!/bin/bash
#SBATCH --job-name=RSM0177
#SBATCH --output=RSM0177.out
#SBATCH --error=RSM0177.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/RSM0177.cif --outdir features 
