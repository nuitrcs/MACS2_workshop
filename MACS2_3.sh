#!/bin/bash
#SBATCH -A e32680
#SBATCH -p short
#SBATCH -t 1:00:00
#SBATCH --mail-type=BEGIN,END,FAIL,REQUEUE
#SBATCH --mail-user= <YourEmail>
##SBATCH --output=./logs/%x_%j.out
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem-per-cpu=1gb
#SBATCH --export=NONE
#SBATCH -J get_bw2 

cd $SLURM_SUBMIT_DIR

module load deeptools/3.5.6
module load samtools/1.2

cd ../02_MACS_output

#samtools index /projects/e32680/03_macspeakcalling_reference/01_bam/WT_REP2.mLb.clN.sorted.bam

bamCoverage -b /projects/e32680/03_macspeakcalling_reference/01_bam/WT_REP1.mLb.clN.sorted.bam \
-o /projects/e32680/<YourFolder>/wt_sample1_chip.bw \
--binSize 20
