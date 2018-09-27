#!/usr/bin/env bash


singularity exec img/minimap2.simg \
    minimap2 \
    -t 50 \
    -ax splice \
    data/GCF_000001635.26_GRCm38.p6_genomic.fna \
    output/reads/p450_reads.fastq \
    > output/mapped/mapped_reads.sam

samtools sort \
    output/mapped/mapped_reads.sam \
    > output/mapped/mapped_reads_sorted.bam

samtools index \
    output/mapped/mapped_reads_sorted.bam

