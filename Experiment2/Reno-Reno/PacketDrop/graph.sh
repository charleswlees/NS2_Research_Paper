#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedPacketLoss.png'
set xlabel 'Time (s)'
set ylabel 'Packets'
plot 'packetGraph1_2MB' with lines title '2MB',\
     'packetGraph1_4MB' with lines title '4MB',\
     'packetGraph1_6MB' with lines title '6MB',\
     'packetGraph1_8MB' with lines title '8MB',\
     'packetGraph1_10MB' with lines title '10MB'

