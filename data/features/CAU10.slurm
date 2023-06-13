#!/bin/bash
#SBATCH --job-name=CAU10
#SBATCH --output=CAU10.out
#SBATCH --error=CAU10.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/CAU10.cif --outdir features 
