#!/bin/csh
#PBS -q hotel
#PBS -N tf_binding
#PBS -l nodes=1:ppn=3
#PBS -l walltime=0:10:00
#PBS -o tf_binding_output_file.o
#PBS -e tf_binding_error_file.e
#PBS -V
#PBS -M bvtsu@ucsd.edu
#PBS -m abe

cd ~/code/biom262-2016/weeks/week01/data





%%bash --out exercise4
# Hi, this is my code for exercise4. Brian.
module load biotools
bedtools intersect -a gencode.v19.annotation.chr22.transcript.promoter.gtf -b tf.nfkb.bed > gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf

wc -l gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf
echo '--- First 10 lines ---'
head gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf
echo '--- Random 10 lines ---'
awk -v seed=908 'BEGIN{srand(seed);}{ if (rand() < 0.5 ) {print $0}}' gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf | head
echo '--- Last 10 lines ---'
tail gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf

print(exercise4)

%%bash --out exercise5

# Hi, here is my code. Sincerely, Brian.
module load biotools
bedtools getfasta -fi GRCh37.p13.chr22.fa -bed gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf -fo gencode.v19.annotation.chr22.transcript.promoter.nfkb.fasta -s

wc -l gencode.v19.annotation.chr22.transcript.promoter.nfkb.fasta
echo '--- First 10 lines ---'
head gencode.v19.annotation.chr22.transcript.promoter.nfkb.fasta
echo '--- Random 10 lines ---'
awk -v seed=908 'BEGIN{srand(seed);}{ if (rand() < 0.5 ) {print $0}}' gencode.v19.annotation.chr22.transcript.promoter.nfkb.fasta | head
echo '--- Last 10 lines ---'
tail gencode.v19.annotation.chr22.transcript.promoter.nfkb.fasta

print(exercise5)

echo "Hello I am a message in standard out (stdout)"
