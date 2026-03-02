# Гистограмма распределения результатов наблюдений
set terminal pngcairo size 900,550 enhanced font "Arial,12"
set output "plot1_histogram.png"

set title "Гистограмма распределения результатов" font "Arial,14"
set xlabel "Значение"
set ylabel "Число попаданий"

set style data histograms
set style fill solid 0.7 border lc rgb "#08519c"
set boxwidth 0.03

set xrange [3.50:4.50]
set yrange [0:15]
set xtics 0.03 rotate by -45
set ytics 1
set grid ytics

# Данные: центр интервала, количество
plot "-" using 1:2 with boxes lc rgb "#000000" title "Частота попаданий"
4 10
e