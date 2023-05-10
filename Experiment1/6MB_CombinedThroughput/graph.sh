# Charlie Lees
# CS5700 HW3

#This script is used to combine multiple graph data plots into a single graph.

#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedThroughput.png'
set xlabel 'Time (s)'
set ylabel 'Throughput (B/s)'
plot 'thrptGraph1NR' with lines title 'ThroughputNR',\
     'thrptGraph1R' with lines title 'ThroughputR',\
     'thrptGraph1T' with lines title 'ThroughputT',\
     'thrptGraph1V' with lines title 'ThroughputV'

