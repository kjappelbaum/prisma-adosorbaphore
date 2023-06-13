#!/bin/bash
#SBATCH --job-name=ddmof_16703
#SBATCH --output=ddmof_16703.out
#SBATCH --error=ddmof_16703.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/ddmof_16703.cif --outdir features 
