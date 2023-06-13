#!/bin/bash
#SBATCH --job-name=str_m3_o10_o28_pcu_sym.50
#SBATCH --output=str_m3_o10_o28_pcu_sym.50.out
#SBATCH --error=str_m3_o10_o28_pcu_sym.50.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_ph_core.py --infile CIF-Files/str_m3_o10_o28_pcu_sym.50.cif --outdir ph_feat_new_2 
