#!/bin/bash
#SBATCH --job-name=str_m4_o17_o17_acs_sym.171
#SBATCH --output=str_m4_o17_o17_acs_sym.171.out
#SBATCH --error=str_m4_o17_o17_acs_sym.171.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/str_m4_o17_o17_acs_sym.171.cif --outdir features 
