#!/bin/bash
#SBATCH --job-name=CAU21
#SBATCH --output=CAU21.out
#SBATCH --error=CAU21.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/CAU21.cif --outdir features 
