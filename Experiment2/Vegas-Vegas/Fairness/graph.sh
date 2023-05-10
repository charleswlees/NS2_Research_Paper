#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedFairness.png'
set xlabel 'Time (s)'
set ylabel 'Difference Between Data Streams (B/s)'
plot 'fairGraph1_2MB' with lines title '2MB',\
     'fairGraph1_4MB' with lines title '4MB',\
     'fairGraph1_6MB' with lines title '6MB',\
     'fairGraph1_8MB' with lines title '8MB',\
     'fairGraph1_10MB' with lines title '10MB'

