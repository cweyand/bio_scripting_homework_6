#!/bin/bash

#homework_6_part_3


#translate nucleic acid sequences from FASTA format to amino acids
#generate stats for before and after translation

for file in *fasta.transdecoder.cds
do
#only want name left of the first whitespace
    cut -d " " -f 1 $file > $file.temp
    mv $file.temp $file
#append to file
    get_fasta_stats.pl -g -T $file >> fasta_output.txt
#used the sformat to speed up translation time
    transeq -sformat pearson $file $file.pep
done

#pep loop
for pepfile in *.pep
do
    get_fasta_stats.pl -t $pepfile >> pep_output.txt
done
