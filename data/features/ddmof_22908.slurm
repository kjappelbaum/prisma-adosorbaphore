#!/bin/bash
#SBATCH --job-name=ddmof_22908
#SBATCH --output=ddmof_22908.out
#SBATCH --error=ddmof_22908.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/ddmof_22908.cif --outdir features 
