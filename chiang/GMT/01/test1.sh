echo -40 90 |psxy -R-60/60/-80/150 -JX6.0 -St1 -Ba20g10/a30g15 -G255/0/0 -W2/0/255/0 -K>test.ps
echo 0 0|psxy -R-60/60/-80/150 -JX6.0 -St1 -Ba20g10/a30g15 -G0/255/0 -W2/0 -O -K>> test.ps
echo 40 30|psxy -R-60/60/-80/150 -JX6.0 -Ss1 -Ba20g10/a30g15 -G0/0/255 -W2/0 -O >> test.ps
