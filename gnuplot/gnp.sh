#!/usr/bin/env bash
gnuplot << EOF 
#set terminal epslatex color colortext size 9cm,5cm
#set size 1.5,1.0
#set output "out.tex"
set terminal png
set output "out.png"

#set grid
set samples 250, 250
set isosamples 500, 500

i = {0.0,1.0}
r=1

set xrange [-r:r] noreverse nowriteback
set yrange [-r:r] noreverse nowriteback  
set ticslevel 0
set format cb "%4.1f"
set colorbox user size .03, .6 noborder
set cbtics scale 0

set xlabel "x" offset 3, 0, 0 
set ylabel "y" offset -5, 0, 0
set zlabel "real(.)" offset 2, 0, 0       
set logscale z
set pm3d implicit at s

f(x,y) = abs(x+i*y)>0.01 ? real(exp(1/sqrt(x+i*y))) : 0
g(x,y) = abs(x+i*y)>0.01 ? imag(exp(1/sqrt(x+i*y))) : 0

set hidden front

#splot f(x,y) with pm3d at b, f(x,y)
splot f(x,y)
#splot '++' using 1:2:(f($1,$2)):(g($1,$2)) with pm3d
EOF
