#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedLatency.png'
set xlabel 'Time (s)'
set ylabel 'Latency (B/s)'
set key bottom right
set title 'Reno Latency Experiment 3'
plot 'latGraph1_0' with lines title '0 RED',\
     'latGraph1_1' with lines title '1 RED',\
     'latGraph1_2' with lines title '2 RED',\
     'latGraph1_3' with lines title '3 RED',\
     'latGraph1_4' with lines title '4 RED',\
     'latGraph1_5' with lines title '5 RED'

