set terminal pngcairo enhanced font 'Verdana,10'
set output 'latency.png'
set xlabel 'Time (s)'
set ylabel 'Latency (B/s)'
set arrow from 1,0 to 1,.04 nohead lc rgb "red"
set arrow from 3,0 to 3,.04 nohead lc rgb "red"
set arrow from 5,0 to 5,.04 nohead lc rgb "red"
set arrow from 7,0 to 7,.04 nohead lc rgb "red"
set arrow from 9,0 to 9,.04 nohead lc rgb "red"
plot 'latGraph1' with lines title 'Latency'

