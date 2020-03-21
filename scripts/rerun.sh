#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex40
#SBATCH --output=example_40.log
#
rm -rf example_40
rm *.png
time Rscript example_40.R
zip -r pirouette_example_40.zip example_40 example_40.R scripts *.png

