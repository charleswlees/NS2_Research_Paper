#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedLatency.png'
set xlabel 'Time (s)'
set ylabel 'Latency (B/s)'
plot 'latGraph1_2MB' with lines title '2MB',\
     'latGraph1_4MB' with lines title '4MB',\
     'latGraph1_6MB' with lines title '6MB',\
     'latGraph1_8MB' with lines title '8MB',\
     'latGraph1_10MB' with lines title '10MB'

