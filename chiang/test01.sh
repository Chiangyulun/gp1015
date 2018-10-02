# background
psbasemap -Ba1f1/a1f1::EwNs -Jm2 -R119/123/21/26 -G0/250/250 -K -Yc -Xc> report.ps
#coastline
pscoast -J -B -R -O -Di -W1 -G250/250/0 -K >> report.ps
#earthquake location
#psxy eq.list -J -B -R -Sc0.01 -W0.01 -G255/0/0 -W2 -G255/0/0 -O >> report.ps

makecpt -T0/315/15 -Crainbow -Z > depth.cpt

awk '{ if ($4<3) print $1, $2, $3}' eq.list| psxy -J -B -R -Sc0.01  -Cdepth.cpt -W2 -G255/0/0 -K -O >> report.ps
awk '{ if ($4>=3 && $4<4) print $1, $2, $3}' eq.list| psxy -J -B -R -Sc0.1  -Cdepth.cpt -W2 -G255/0/0 -K -O >> report.ps
awk '{ if ($4>=4 && $4<5) print $1, $2, $3}' eq.list| psxy -J -B -R -Sc0.3  -Cdepth.cpt -W2 -G255/0/0 -K -O >> report.ps
awk '{ if ($4>=5 && $4<6) print $1, $2, $3}' eq.list| psxy -J -B -R -Sc0.6  -Cdepth.cpt -W2 -G255/0/0 -K -O >> report.ps
awk '{ if ($4>=6 && $4<7) print $1, $2, $3}' eq.list| psxy -J -B -R -Sc1  -Cdepth.cpt -W2 -G255/0/0  -O >> report.ps
