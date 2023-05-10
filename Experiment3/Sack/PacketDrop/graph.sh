#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedPacketdrop.png'
set xlabel 'Time (s)'
set ylabel 'Packetloss'
plot 'packetGraph1_0' with lines title '0 RED',\
     'packetGraph1_1' with lines title '1 RED',\
     'packetGraph1_2' with lines title '2 RED',\
     'packetGraph1_3' with lines title '3 RED',\
     'packetGraph1_4' with lines title '4 RED',\
     'packetGraph1_5' with lines title '5 RED'

