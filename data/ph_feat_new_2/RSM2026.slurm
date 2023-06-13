#!/bin/bash
#SBATCH --job-name=RSM2026
#SBATCH --output=RSM2026.out
#SBATCH --error=RSM2026.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_ph_core.py --infile CIF-Files/RSM2026.cif --outdir ph_feat_new_2 
