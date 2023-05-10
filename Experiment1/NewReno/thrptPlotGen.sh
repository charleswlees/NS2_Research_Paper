set terminal pngcairo enhanced font 'Verdana,10'
set output 'throughput.png'
set xlabel 'Time (s)'
set ylabel 'Throughput (B/s)'
plot 'thrptGraph1' with lines title 'Throughput'

