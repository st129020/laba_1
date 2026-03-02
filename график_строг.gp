datafile = "C:/Users/User/OneDrive/Documents/лаба1/лаба1.txt"
set encoding utf8
set xlabel "Time"
set ylabel "Value"
set title "Least Squares Approximation"
set grid
set key left top

set terminal windows   
f(x) = a*x + b

a = 0
b = 0

fit f(x) datafile using ($0+1):1 via a,b

plot datafile using ($0+1):1 with points pt 7 ps 1.2 lc rgb "black" title "Data", \
     f(x) with lines lw 2 title "Least Squares Fit"