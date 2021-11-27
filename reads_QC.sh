#!/bin/sh

#libs = ls body/1raw/ | sed 's/_R[1-2]_001.fastq.gz//'
source /opt/miniconda3/etc/profile.d/conda.sh
conda activate cutadaptenv


for lib in $(ls body/1raw/ | sed 's/_R[1-2]_001.fastq.gz//' | uniq)
do
#echo $lib
#echo body/2derived/$lib'_R1_001_cutadapt.fastq.gz'

##remove Illumina adaptors

#conda activate cutadaptenv
cutadapt -a AGATCGGAAGAG -A AGATCGGAAGAG -o body/2derived/$lib'_R1_001_cutadapt.fastq.gz' -p body/2derived/$lib'_R2_001_cutadapt.fastq.gz' body/1raw/$lib'_R1_001.fastq.gz' body/1raw/$lib'_R2_001.fastq.gz'
#conda deactivate

##QC
java -jar head/soft/Trimmomatic-0.39/trimmomatic-0.39.jar PE body/2derived/$lib'_R1_001_cutadapt.fastq.gz' body/2derived/$lib'_R2_001_cutadapt.fastq.gz' body/2derived/$lib'_R1_001_trimmomatic_paired.fastq.gz' body/2derived/$lib'_R1_001_trimmomatic_unpaired.fastq.gz' body/2derived/$lib'_R2_001_trimmomatic_paired.fastq.gz' body/2derived/$lib'_R2_001_trimmomatic_unpaired.fastq.gz' LEADING:20 TRAILING:20 MINLEN:36

done
