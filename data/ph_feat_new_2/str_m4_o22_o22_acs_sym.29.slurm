#!/bin/bash
#SBATCH --job-name=str_m4_o22_o22_acs_sym.29
#SBATCH --output=str_m4_o22_o22_acs_sym.29.out
#SBATCH --error=str_m4_o22_o22_acs_sym.29.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_ph_core.py --infile CIF-Files/str_m4_o22_o22_acs_sym.29.cif --outdir ph_feat_new_2 
