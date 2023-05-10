#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedFairness.png'
set xlabel 'Time (s)'
set ylabel 'Difference between streams'
plot 'fairGraph1_0' with lines title '0 RED',\
     'fairGraph1_1' with lines title '1 RED',\
     'fairGraph1_2' with lines title '2 RED',\
     'fairGraph1_3' with lines title '3 RED',\
     'fairGraph1_4' with lines title '4 RED',\
     'fairGraph1_5' with lines title '5 RED'

