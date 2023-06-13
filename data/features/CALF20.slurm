#!/bin/bash
#SBATCH --job-name=CALF20
#SBATCH --output=CALF20.out
#SBATCH --error=CALF20.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/CALF20.cif --outdir features 
