#!/bin/bash
#SBATCH --job-name=RSM1233
#SBATCH --output=RSM1233.out
#SBATCH --error=RSM1233.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_ph_core.py --infile CIF-Files/RSM1233.cif --outdir ph_feat_new_2 
