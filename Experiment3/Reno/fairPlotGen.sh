set terminal pngcairo enhanced font 'Verdana,10'
set output 'fairness.png'
set xlabel 'Time (s)'
set ylabel 'Difference between Datastreams'
#set arrow from 1,0 to 1,2500 nohead lc rgb "red" 
#set arrow from 3,0 to 3,2500 nohead lc rgb "red"
#set arrow from 5,0 to 5,2500 nohead lc rgb "red"
#set arrow from 7,0 to 7,2500 nohead lc rgb "red"
#set arrow from 9,0 to 9,2500 nohead lc rgb "red"
plot 'fairGraph1' using 1:2 with linespoints title 'Flow1'
     #'fairGraph1' using 1:3 with linespoints title 'Flow2',\
     #'fairGraph1' using 1:4 with linespoints title 'CBR'

