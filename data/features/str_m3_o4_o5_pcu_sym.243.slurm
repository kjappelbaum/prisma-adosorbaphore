#!/bin/bash
#SBATCH --job-name=str_m3_o4_o5_pcu_sym.243
#SBATCH --output=str_m3_o4_o5_pcu_sym.243.out
#SBATCH --error=str_m3_o4_o5_pcu_sym.243.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/str_m3_o4_o5_pcu_sym.243.cif --outdir features 
