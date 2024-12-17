#!/bin/bash
#SBATCH --job-name=bwa_mem2_alignment  # Job name
#SBATCH --output=bwa_mem2_alignment.log  # Output log file
#SBATCH --error=bwa_mem2_alignment.err   # Error log file
#SBATCH --ntasks=1                      # Number of tasks (1 for this process)
#SBATCH --cpus-per-task=24              # Number of CPU cores to use
#SBATCH --mem=200G                      # Memory limit
#SBATCH --time=12:00:00                 # Maximum execution time (12 hours)
#SBATCH --partition=pace-cpu            # Use correct partition

# Email notifications (BEGIN, END, FAIL)
#SBATCH --mail-user=imusayeva3@gatech.edu
#SBATCH --mail-type=BEGIN,END,FAIL

# Set the path to BWA-MEM2 and reference files
BWA_MEM2_DIR="/home/hice1/imusayeva3/biol6150/ProjectSubmissions/Group6/Project2/bwa-mem2-2.2.1_x64-linux"
REFERENCE_DIR="/home/hice1/imusayeva3/biol6150/ProjectSubmissions/Group6/Project2"
REFERENCE_FILE="hg38.fa"
FASTQ1="SRR081224_1_trimmed.fastq.gz"
FASTQ2="SRR081224_2_trimmed.fastq.gz"

# Run BWA-MEM2 alignment using AVX2
$BWA_MEM2_DIR/bwa-mem2.avx2 mem -t 24 ${REFERENCE_DIR}/${REFERENCE_FILE} ${REFERENCE_DIR}/${FASTQ1} ${REFERENCE_DIR}/${FASTQ2} > ${REFERENCE_DIR}/SRR081224.sam
