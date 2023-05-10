#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedThroughput.png'
set xlabel 'Time (s)'
set ylabel 'Throughput (B/s)'
plot 'thrptGraph1_0' with lines title '0 RED',\
     'thrptGraph1_1' with lines title '1 RED',\
     'thrptGraph1_2' with lines title '2 RED',\
     'thrptGraph1_3' with lines title '3 RED',\
     'thrptGraph1_4' with lines title '4 RED',\
     'thrptGraph1_5' with lines title '5 RED'

