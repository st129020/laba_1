# Сглаженная кривая распределения с точками данных
set terminal pngcairo size 900,550 enhanced font "Arial,12"
set output "plot3_spline_freq.png"

set title "Сглаженная кривая распределения результатов" font "Arial,14"
set xlabel "Значение"
set ylabel "Число попаданий"

set xrange [3.85:4.15]
set yrange [0:15]
set xtics 0.03 rotate by -45
set ytics 1
set grid ytics

# Данные: центр интервала, количество
plot "-" using 1:2 with lines smooth csplines lw 2 lc rgb "#08519c" title "Сглаженная кривая", \
     "-" using 1:2 with points pt 7 ps 1.5 lc rgb "#d73027" title "Точки данных"
3.912 10
3.937 6
3.962 11
3.987 9
4.012 10
4.037 3
4.062 1
4.087 1
e
3.912 10
3.937 6
3.962 11
3.987 9
4.012 10
4.037 3
4.062 1
4.087 1
e
