#bandwidth.awk

#The idea here is to add up the total number of bytes sent each second and divide it by the time between each report

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
