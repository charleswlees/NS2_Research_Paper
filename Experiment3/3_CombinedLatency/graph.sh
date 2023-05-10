#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedLatency.png'
set xlabel 'Time (s)'
set ylabel 'Latency (B/s)'
plot 'latGraph1R' with lines title 'LatencyR',\
     'latGraph1S' with lines title 'LatencyS'

