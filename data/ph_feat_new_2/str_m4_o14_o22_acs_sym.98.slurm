#!/bin/bash
#SBATCH --job-name=str_m4_o14_o22_acs_sym.98
#SBATCH --output=str_m4_o14_o22_acs_sym.98.out
#SBATCH --error=str_m4_o14_o22_acs_sym.98.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_ph_core.py --infile CIF-Files/str_m4_o14_o22_acs_sym.98.cif --outdir ph_feat_new_2 
