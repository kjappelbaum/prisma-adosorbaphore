#!/bin/bash
#SBATCH --job-name=RSM2238
#SBATCH --output=RSM2238.out
#SBATCH --error=RSM2238.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_ph_core.py --infile CIF-Files/RSM2238.cif --outdir ph_feat_new_2 
