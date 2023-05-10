# Charlie Lees
# CS5700 HW3
#bandwidth.awk


BEGIN {
    total = 0; #total amount of data
    gotime=0;#time that the program is going to record latency
    time_interval=1;#interval between each recording (in seconds)
}

{
    
	event = $1
	time = $2
	node_id = $3
	pktType=$5
	packet_size=$6


	if(time>gotime){
		bandwidth = total/time_interval * 8/1000 #kbps
		print gotime, bandwidth;
		#resetting for next batch
		total=0;
		gotime+=time_interval;

		}

	#if not the time, add to the total
	total+=packet_size;


}

END{
	;
}
