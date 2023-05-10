#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedThroughput.png'
set xlabel 'Time (s)'
set ylabel 'Throughput (B/s)'
plot 'thrptGraph1_2MB' with lines title '2MB',\
     'thrptGraph1_4MB' with lines title '4MB',\
     'thrptGraph1_6MB' with lines title '6MB',\
     'thrptGraph1_8MB' with lines title '8MB',\
     'thrptGraph1_10MB' with lines title '10MB'

