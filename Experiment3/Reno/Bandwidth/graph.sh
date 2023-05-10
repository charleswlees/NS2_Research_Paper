#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedBandwidth.png'
set xlabel 'Time (s)'
set ylabel 'Bandwidth (B/s)'
plot 'bandGraph1_0' with lines title '0 RED',\
     'bandGraph1_1' with lines title '1 RED',\
     'bandGraph1_2' with lines title '2 RED',\
     'bandGraph1_3' with lines title '3 RED',\
     'bandGraph1_4' with lines title '4 RED',\
     'bandGraph1_5' with lines title '5 RED'

