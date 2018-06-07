#!/bin/bash -l
#SBATCH -D /home/aew75/projects/UGTortho/
#SBATCH -o /home/aew75/projects/UGTortho/slurm-log/ugtExample-stdout-%j.txt
#SBATCH -e /home/aew75/projects/UGTortho/slurm-log/ugtExample-stderr-%j.txt
#SBATCH -J ugtExample
#SBATCH -t 48:00:00
set -e
set -u

#SBATCH -N 1
#SBATCH -n 24
#SBATCH -p med

#SBATCH --mail-type=ALL
#SBATCH --mail-user=aew75

module load bio

orthofinder -f /home/aew75/projects/UGTortho/ExampleData -t 24 -S diamond
