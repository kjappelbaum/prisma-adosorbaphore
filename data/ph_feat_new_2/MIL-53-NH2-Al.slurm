#!/bin/bash
#SBATCH --job-name=MIL-53-NH2-Al
#SBATCH --output=MIL-53-NH2-Al.out
#SBATCH --error=MIL-53-NH2-Al.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_ph_core.py --infile CIF-Files/MIL-53-NH2-Al.cif --outdir ph_feat_new_2 
