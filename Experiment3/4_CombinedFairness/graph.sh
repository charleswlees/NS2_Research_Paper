#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedFairness.png'
set xlabel 'Time (s)'
set ylabel 'Difference between Streams'
plot 'fairGraph1R' with lines title 'FairnessR',\
     'fairGraph1S' with lines title 'FairnessS'

