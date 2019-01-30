#!/bin/bash

for sample in `ls /DATA/sorted*.bam`
do
dir="/DATA/sorted/"
dirout="/DATA/mdup/"
out="/metrics/mdup/"
base=$(basename $sample ".bam")
java -jar picard.jar MarkDuplicates \
I= ${dir}/${base}.bam \
O= ${dirout}/${base}.mdup \
M= ${out}/${base}.mdup.txt
done