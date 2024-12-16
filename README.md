## Project 2: Read Mapping

Course: BIOL 4150 / BIOL 6150

Overview

This project focuses on aligning post-QC sequencing reads (FASTQ files) to the human reference genome (GRCh38). Key objectives include preparing the reference genome, aligning reads using BWA-MEM2, and processing the results using SAMtools. The analysis provides practical experience in bioinformatics workflows for next-generation sequencing (NGS) data.

Repository Link:
https://github.com/ilahamusayeva93/Project-2-Read-Mapping 

Project Details

Estimated Time: ~1.5 hours
Tools Used:
BWA-MEM2: For aligning sequencing reads to the reference genome.
SAMtools: For sorting, conversion, and evaluating alignment files.
Environment Configuration
Processor: Intel(R) Xeon(R) Gold 6226 CPU @ 2.70GHz
Cores: 24 (12 cores per socket, 2 sockets)
Memory: 754 GB
Storage: 50 TB (network-mounted) and 1.4 TB (local)
Repository Contents

Project2-ReadMapping.ipynb: Starter notebook with detailed steps for read mapping and post-alignment analysis.
Input Files:
Post-QC FASTQ Files:
SRR081224_1_trimmed.fastq.gz
SRR081224_2_trimmed.fastq.gz
Reference Genome:
hg38.fa (GRCh38 human reference genome)
Scripts and Outputs:
Example commands for reference genome indexing, read alignment, and SAMtools-based file processing.
Intermediate and final output files, including:
Indexed reference genome files (.amb, .ann, .bwt, .fai, etc.)
SAM file: SRR081224.sam
Sorted SAM file: SRR081224_sorted.sam
BAM file: SRR081224.bam
Objectives

Prepare Reference Genome
Download and index the GRCh38 genome for alignment.
Understand the meaning of uppercase/lowercase nucleotides and gaps (N) in FASTA files.
Align Sequencing Reads
Map paired-end reads to the indexed reference genome using BWA-MEM2.
Optimize computational resource usage with SLURM-based batch jobs.
Evaluate Alignment Quality
Process SAM files: sorting, conversion to BAM, and statistical evaluation.
Analyze individual reads (e.g., CIGAR string, chromosome alignment) for detailed insights.
How to Use

Clone the repository:
git clone https://github.com/ilahamusayeva93/Project-2-Read-Mapping
cd Project-2-Read-Mapping
Ensure all dependencies are installed:
BWA-MEM2
SAMtools
Follow the steps in the Project2-ReadMapping.ipynb notebook:
Prepare the reference genome.
Perform read alignment.
Process and evaluate the outputs.
Expected Outputs

Intermediate Files:
Indexed Reference Genome: (hg38.fa, .amb, .ann, .bwt, .pac, .fai)
SAM File: SRR081224.sam
Sorted SAM File: SRR081224_sorted.sam
BAM File: SRR081224.bam
Key Insights:
Total raw and mapped reads.
Detailed analysis of alignment quality and specific read alignments.
Acknowledgments

This project is part of Georgia Tech's BIOL 4150 / BIOL 6150 coursework. Computational resources were provided by the PACE-ICE cluster.
