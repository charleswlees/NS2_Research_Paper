#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedBandwidth.png'
set xlabel 'Time (s)'
set ylabel 'Bandwidth (B/s)'
plot 'bandGraph1_2MB' with lines title '2MB',\
     'bandGraph1_4MB' with lines title '4MB',\
     'bandGraph1_6MB' with lines title '6MB',\
     'bandGraph1_8MB' with lines title '8MB',\
     'bandGraph1_10MB' with lines title '10MB'

