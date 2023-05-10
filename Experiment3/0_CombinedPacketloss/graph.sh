#Graph combined output
set terminal pngcairo enhanced font 'Verdana,10'
set output 'CombinedPacketloss.png'
set xlabel 'Time (s)'
set ylabel 'Packets lost'
plot 'packetGraph1R' with lines title 'PacketlossR',\
     'packetGraph1S' with lines title 'PacketlossS'

