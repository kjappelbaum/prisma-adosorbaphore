#!/bin/bash
#SBATCH --job-name=CuAlPyC
#SBATCH --output=CuAlPyC.out
#SBATCH --error=CuAlPyC.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_ph_core.py --infile CIF-Files/CuAlPyC.cif --outdir ph_feat_new_2 
