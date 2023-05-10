set terminal pngcairo enhanced font 'Verdana,10'
set output 'packetdrop.png'
set xlabel 'Time (s)'
set ylabel 'Dropped Packets'
plot 'packetGraph1' with lines title 'Packet Loss'

