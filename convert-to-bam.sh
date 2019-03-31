for file in results/sam/*.sam 
do
	SRR=$(basename $file .sam)
                 echo $SRR
                 samtools view -S -b results/sam/${SRR}.sam > results/bam/${SRR}-aligned.bam
done

