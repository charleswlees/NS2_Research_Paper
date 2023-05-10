set terminal pngcairo enhanced font 'Verdana,10'
set output 'bandwidth.png'
set xlabel 'Time (s)'
set ylabel 'Bandwidth (B/s)'
plot 'bandGraph1' with lines title 'Bandwidth'

