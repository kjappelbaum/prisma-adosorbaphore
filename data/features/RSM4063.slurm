#!/bin/bash
#SBATCH --job-name=RSM4063
#SBATCH --output=RSM4063.out
#SBATCH --error=RSM4063.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/RSM4063.cif --outdir features 
