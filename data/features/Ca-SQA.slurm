#!/bin/bash
#SBATCH --job-name=Ca-SQA
#SBATCH --output=Ca-SQA.out
#SBATCH --error=Ca-SQA.err
#SBATCH --time=0:30:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB

source /home/kjablonk/miniconda3/etc/profile.d/conda.sh
conda activate mofdscribe

python featurize_core.py --infile CIF-Files/Ca-SQA.cif --outdir features 
