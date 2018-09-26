#!/usr/bin/env bash

singularity exec img/hmmer_3.2.1 \
    hmmsearch \
    -o output/hmmer/rf1.out \
    --tblout output/hmmer/rf1_hits.txt \
    --cpu 10 \
    data/P450.hmm \
    output/translated/rf1.fasta &

singularity exec img/hmmer_3.2.1 \
    hmmsearch \
    -o output/hmmer/rf2.out \
    --tblout output/hmmer/rf2_hits.txt \
    --cpu 10 \
    data/P450.hmm \
    output/translated/rf2.fasta &

singularity exec img/hmmer_3.2.1 \
    hmmsearch \
    -o output/hmmer/rf3.out \
    --tblout output/hmmer/rf3_hits.txt \
    --cpu 10 \
    data/P450.hmm \
    output/translated/rf3.fasta &

singularity exec img/hmmer_3.2.1 \
    hmmsearch \
    -o output/hmmer/rf4.out \
    --tblout output/hmmer/rf4_hits.txt \
    --cpu 10 \
    data/P450.hmm \
    output/translated/rf4.fasta &

singularity exec img/hmmer_3.2.1 \
    hmmsearch \
    -o output/hmmer/rf5.out \
    --tblout output/hmmer/rf5_hits.txt \
    --cpu 10 \
    data/P450.hmm \
    output/translated/rf5.fasta &

singularity exec img/hmmer_3.2.1 \
    hmmsearch \
    -o output/hmmer/rf6.out \
    --tblout output/hmmer/rf6_hits.txt \
    --cpu 10 \
    data/P450.hmm \
    output/translated/rf6.fasta &

wait

