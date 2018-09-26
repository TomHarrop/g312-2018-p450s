#!/usr/bin/env bash

singularity exec img/bbmap_38.00 \
    filterbyname.sh \
    in=output/reads/all_reads.fastq \
    names=output/hmmer/p450_reads.txt \
    include=t \
    out=output/reads/p450_reads.fastq
    
