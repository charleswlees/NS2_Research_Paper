#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedFairness.png'
set xlabel 'Time (s)'
set ylabel 'Fairness [Lower is better] (B/s)'
plot 'fairGraph1NR-R' with lines title 'NR-R',\
     'fairGraph1NR-V' with lines title 'NR-V',\
     'fairGraph1R-R' with lines title 'R-R',\
     'fairGraph1V-V' with lines title 'V-V'

