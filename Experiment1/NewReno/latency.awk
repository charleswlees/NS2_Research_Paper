# Charlie Lees
# CS5700 HW3
#latency.awk


BEGIN {
    packet_count = 0   # initialize the packet count to 0, used to link enqueue and dequeue times
    gotime=0;#time that the program is going to record latency
    avg=0;#average latency over the time_interval
    avg_count=0;#number of packets in the average
    time_interval=1;#interval between each recording
}

{
    if ($1 == "+" && $5 == "tcp") {   # if it's a new packet, record its enqueue time
        packet_count++   # increment the packet count
        enqueue_time[packet_count] = $2 #record the time for this packet count
    }
    else if ($1 == "r" && $5 == "tcp") {   # if it's a dequeued packet, calculate its latency
        dequeue_time = $2
        latency = dequeue_time - enqueue_time[packet_count]#Calculate latency
	avg+=latency;#add to the average total
	avg_count++#add to total packets for this timeframe
	if(dequeue_time>gotime){
		avg = avg/avg_count;#Calculate the average with the total and count
		print gotime, avg; #print statement
		#resetting average variables
		avg=0;
		avg_count=0;
		gotime+=time_interval; #add to the next threshold
	}
        packet_count--   # decrement the packet count
    }
}

END{
	;
}
