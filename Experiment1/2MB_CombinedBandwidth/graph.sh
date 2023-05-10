# Charlie Lees
# CS5700 HW3

#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedBandwidth.png'
set xlabel 'Time (s)'
set ylabel 'Bandwidth (B/s)'
plot 'bandGraph1NR' with lines title 'BandwidthNR',\
     'bandGraph1R' with lines title 'BandwidthR',\
     'bandGraph1T' with lines title 'BandwidthT',\
     'bandGraph1V' with lines title 'BandwidthV'

