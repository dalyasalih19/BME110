#!/bin/bash
#SBATCH --job-name=bedtools_split
#SBATCH --time=01:00:00  
#SBATCH --mail-type=ALL
#SBATCH --mail-user=dsalih@ucsc.edu
#SBATCH --output=bedtools_split_%A_%a.out
#SBATCH --error=bedtools_split_%A_%a.err
#SBATCH --cpus-per-task=2
#SBATCH --mem=16GB
#SBATCH --partition=128x24   

module load miniconda3
conda activate /hb/home/dsalih/env/conda_dalya
module load bedtools

# Run bedtools command
bedtools bamtobed \ 
-split \
-i /hb/groups/bme110/fall2024/problemSet1/MCF_10_2D_SRSF1_chr17_portion.bam \
> ~/bedtools_dir/MCF_10_2D_SRSF1_chr17_portion.split.bed

