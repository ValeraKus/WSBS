#!/bin/sh


get_organelle_from_reads.py -1 body/2derived/Pol10_S3_R1_001_trimmomatic_paired.fastq.gz -2 body/2derived/Pol10_S3_R2_001_trimmomatic_paired.fastq.gz -F animal_mt -o body/3results/GetOrganelle/Pol10_S3_from_reads -w 41 -k 21,33,47,55,61,71 --overwrite

get_organelle_from_reads.py -1 body/2derived/Pol10_S3_R1_001_trimmomatic_paired.fastq.gz -2 body/2derived/Pol10_S3_R2_001_trimmomatic_paired.fastq.gz -F animal_mt -o body/3results/GetOrganelle/Pol10_S3_from_reads2  -s body/3results/GetOrganelle/Pol10_S3_from_reads/animal_mt.K71.scaffolds.graph1.1.path_sequence.fasta -R 15 -w 37 --overwrite

get_organelle_from_reads.py -1 body/2derived/Pol10_S3_R1_001_trimmomatic_paired.fastq.gz -2 body/2derived/Pol10_S3_R2_001_trimmomatic_paired.fastq.gz -F animal_mt -o body/3results/GetOrganelle/Pol10_S3_from_reads3  -s body/3results/GetOrganelle/Pol10_S3_from_reads2/animal_mt.K55.scaffolds.graph1.1.path_sequence.fasta -R 15 -w 37 --overwrit


e
