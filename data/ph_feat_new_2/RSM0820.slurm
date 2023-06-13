#!/bin/bash
#SBATCH --job-name=RSM0820
#SBATCH --output=RSM0820.out
#SBATCH --error=RSM0820.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_ph_core.py --infile CIF-Files/RSM0820.cif --outdir ph_feat_new_2 
