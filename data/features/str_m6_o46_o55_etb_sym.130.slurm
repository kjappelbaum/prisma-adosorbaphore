#!/bin/bash
#SBATCH --job-name=str_m6_o46_o55_etb_sym.130
#SBATCH --output=str_m6_o46_o55_etb_sym.130.out
#SBATCH --error=str_m6_o46_o55_etb_sym.130.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/str_m6_o46_o55_etb_sym.130.cif --outdir features 
