#!/bin/bash
#SBATCH --job-name=RSM4240
#SBATCH --output=RSM4240.out
#SBATCH --error=RSM4240.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_ph_core.py --infile CIF-Files/RSM4240.cif --outdir ph_feat_new_2 
