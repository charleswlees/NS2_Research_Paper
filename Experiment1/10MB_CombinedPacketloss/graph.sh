# Charlie Lees
# CS5700 HW3

#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedPacketloss.png'
set xlabel 'Time (s)'
set ylabel 'Packets lost'
plot 'packetGraph1NR' with lines title 'PacketlossNR',\
     'packetGraph1R' with lines title 'PacketlossR',\
     'packetGraph1T' with lines title 'PacketlossT',\
     'packetGraph1V' with lines title 'PacketlossV'

