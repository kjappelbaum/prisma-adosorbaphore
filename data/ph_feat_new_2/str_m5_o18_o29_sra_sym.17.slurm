#!/bin/bash
#SBATCH --job-name=str_m5_o18_o29_sra_sym.17
#SBATCH --output=str_m5_o18_o29_sra_sym.17.out
#SBATCH --error=str_m5_o18_o29_sra_sym.17.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_ph_core.py --infile CIF-Files/str_m5_o18_o29_sra_sym.17.cif --outdir ph_feat_new_2 
