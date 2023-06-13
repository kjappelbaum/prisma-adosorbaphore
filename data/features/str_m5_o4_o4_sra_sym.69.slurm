#!/bin/bash
#SBATCH --job-name=str_m5_o4_o4_sra_sym.69
#SBATCH --output=str_m5_o4_o4_sra_sym.69.out
#SBATCH --error=str_m5_o4_o4_sra_sym.69.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/str_m5_o4_o4_sra_sym.69.cif --outdir features 
