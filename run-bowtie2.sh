SCRIPT_DIR=$(dirname $(realpath $0))

BASE_DIR=$(realpath $(dirname $SCRIPT_DIR))

cd $BASE_DIR

echo "working to $BASE_DIR"

export BOWTIE2_INDEXES=$(pwd)/combined

for file in CA2/data; do
    SRR=$(basename $file A0158131M_1.fq)
    echo running $SRR
    bowtie2 -x combine.indexing \
         --very-fast -p 4\
         -1 ~/Desktop/CA2/${SRR}/A0158131M_1.fq \
         -2 ~/Desktop/CA2/${SRR}/A0158131M_2.fq \
         -S ~/Desktop/CA2/results/sam/${SRR}.sam
done

