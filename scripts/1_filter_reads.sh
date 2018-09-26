#!/usr/bin/env bash

cat data/reads/*.fastq > output/reads/all_reads.fastq

singularity exec img/bbmap_38.00 \
    reformat.sh \
    in=output/reads/all_reads.fastq \
    out=output/reads/filtered_reads.fasta \
    qtrim=b \
    trimq=7 \
    minlength=1000 \
    maxlength=5000

