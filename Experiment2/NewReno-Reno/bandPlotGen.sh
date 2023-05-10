set terminal pngcairo enhanced font 'Verdana,10'
set output 'bandwidth.png'
set xlabel 'Time (s)'
set ylabel 'Bandwidth (B/s)'
set arrow from 1,0 to 1,7000 nohead lc rgb "red"
set arrow from 3,0 to 3,7000 nohead lc rgb "red"
set arrow from 5,0 to 5,7000 nohead lc rgb "red"
set arrow from 7,0 to 7,7000 nohead lc rgb "red"
set arrow from 9,0 to 9,7000 nohead lc rgb "red"
plot 'bandGraph1' using 1:2 with linespoints title "Flow1",\
     'bandGraph1' using 1:3 with linespoints title "Flow2",\
     'bandGraph1' using 1:4 with linespoints title 'CBR'
