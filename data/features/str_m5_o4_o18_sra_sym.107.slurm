#!/bin/bash
#SBATCH --job-name=str_m5_o4_o18_sra_sym.107
#SBATCH --output=str_m5_o4_o18_sra_sym.107.out
#SBATCH --error=str_m5_o4_o18_sra_sym.107.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/str_m5_o4_o18_sra_sym.107.cif --outdir features 
