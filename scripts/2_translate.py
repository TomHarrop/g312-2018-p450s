#!/usr/bin/env python3

from Bio import SeqIO

SeqIO.write((x.translate(id=x.id)
             for x in SeqIO.parse('output/reads/filtered_reads.fasta', 'fasta')),
            'output/translated/rf1.fasta',
            'fasta')

SeqIO.write((x[1:].translate(id=x.id)
             for x in SeqIO.parse('output/reads/filtered_reads.fasta', 'fasta')),
            'output/translated/rf2.fasta',
            'fasta')

SeqIO.write((x[2:].translate(id=x.id)
             for x in SeqIO.parse('output/reads/filtered_reads.fasta', 'fasta')),
            'output/translated/rf3.fasta',
            'fasta')

SeqIO.write((x.reverse_complement().translate(id=x.id)
             for x in SeqIO.parse('output/reads/filtered_reads.fasta', 'fasta')),
            'output/translated/rf4.fasta',
            'fasta')

SeqIO.write((x.reverse_complement()[1:].translate(id=x.id)
             for x in SeqIO.parse('output/reads/filtered_reads.fasta', 'fasta')),
            'output/translated/rf5.fasta',
            'fasta')

SeqIO.write((x.reverse_complement()[2:].translate(id=x.id)
             for x in SeqIO.parse('output/reads/filtered_reads.fasta', 'fasta')),
            'output/translated/rf6.fasta',
            'fasta')

