#!/bin/bash
#SBATCH --job-name=RSM3176
#SBATCH --output=RSM3176.out
#SBATCH --error=RSM3176.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/RSM3176.cif --outdir features 
