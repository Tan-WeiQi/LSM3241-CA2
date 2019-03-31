for file in results/bam/*-aligned.bam 
do
	SRR=$(basename $file -aligned.bam)
                 echo $SRR
                 samtools sort results/bam/${SRR}-aligned.bam -o results/bam/${SRR}-sorted.bam
done

