# Charlie Lees
# CS5700 HW3

#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedLatency.png'
set xlabel 'Time (s)'
set ylabel 'Latency (B/s)'
plot 'latGraph1NR' with lines title 'LatencyNR',\
     'latGraph1R' with lines title 'LatencyR',\
     'latGraph1T' with lines title 'LatencyT',\
     'latGraph1V' with lines title 'LatencyV'

