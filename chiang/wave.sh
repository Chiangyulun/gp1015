out_ps=wave.ps
in_data=wave.txt

gmtset PAPER_MEDIA A4

psxy -R0/120/-150000/200000 -B20/50000NSWE -Jx0.1/0.00001 $in_data -W1 -Xc -Yc -K> $out_ps
echo 28.378000 167232.687500|psxy  -J -B  -Sc1 -W1/2555/0/0  -R -O >>$out_ps
