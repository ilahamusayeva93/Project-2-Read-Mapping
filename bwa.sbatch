#!/bin/bash
#SBATCH --job-name=bwa_mem2_index      # Job name
#SBATCH --output=bwa_mem2_index.log    # Output log file
#SBATCH --error=bwa_mem2_index.err     # Error log file
#SBATCH --ntasks=1                     # Number of tasks (1 for this process)
#SBATCH --cpus-per-task=2              # Number of CPU cores to use (reduced to focus on memory)
#SBATCH --mem=120G                     # Increase memory limit to 120 GB
#SBATCH --time=12:00:00                # Maximum execution time (12 hours)
#SBATCH --partition=pace-cpu           # Use correct partition

# Email notifications (BEGIN, END, FAIL)
#SBATCH --mail-user=imusayeva3@gatech.edu
#SBATCH --mail-type=BEGIN,END,FAIL

# Set the path to BWA-MEM2 and reference files
BWA_MEM2_DIR="/home/hice1/imusayeva3/biol6150/ProjectSubmissions/Group6/Project2/bwa-mem2-2.2.1_x64-linux"
REFERENCE_DIR="/home/hice1/imusayeva3/biol6150/ProjectSubmissions/Group6/Project2"
REFERENCE_FILE="hg38.fa"

# Run BWA-MEM2 index
$BWA_MEM2_DIR/bwa-mem2 index ${REFERENCE_DIR}/${REFERENCE_FILE}
