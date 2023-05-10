# Charlie Lees
# CS5700 HW3
# Latency Graph Script

set terminal pngcairo enhanced font 'Verdana,10'
set output 'latency.png'
set xlabel 'Time (s)'
set ylabel 'Latency (B/s)'
plot 'latGraph1' with lines title 'Latency'

