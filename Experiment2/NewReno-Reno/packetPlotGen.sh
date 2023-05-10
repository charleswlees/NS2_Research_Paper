set terminal pngcairo enhanced font 'Verdana,10'
set output 'packetdrop.png'
set xlabel 'Time (s)'
set ylabel 'Dropped Packets'
set arrow from 1,0 to 1,10 nohead lc rgb "red"
set arrow from 3,0 to 3,10 nohead lc rgb "red"
set arrow from 5,0 to 5,10 nohead lc rgb "red"
set arrow from 7,0 to 7,10 nohead lc rgb "red"
set arrow from 9,0 to 9,10 nohead lc rgb "red"
plot 'packetGraph1' with lines title 'Packet Loss'

