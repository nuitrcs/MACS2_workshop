computeMatrix reference-point --referencePoint center \
-b 4000 -a 4000 \
-R wt_peaks_final.bed \
-S wt_sample1_chip.bw wt_sample2_chip.bw \
--skipZeros -o wt1_matrix.gz

plotProfile -m ./wt1_matrix.gz \
-out ./plot1_wt_replicates2.png \
--regionsLabel "" \
--perGroup \
--colors red blue \
--samplesLabel "WT_replicate1" "WT_replicate2" \
--refPointLabel "PRDM16 binding sites"

