#!/bin/bash
#SBATCH --job-name=AlTCPP-FF2
#SBATCH --output=AlTCPP-FF2.out
#SBATCH --error=AlTCPP-FF2.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/AlTCPP-FF2.cif --outdir features 
