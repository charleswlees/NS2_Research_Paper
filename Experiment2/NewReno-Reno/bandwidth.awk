#bandwidth.awk

#The idea here is to add up the total number of bytes sent each second and divide it by the time between each report

BEGIN {
    total = 0; #total amount of data
    fid1_total=0;
    fid2_total=0;
    fid3_total=0;
    gotime=0;#time that the program is going to record latency
    time_interval=1;#interval between each recording (in seconds)
}

{
    
	event = $1
	time = $2
	node_id = $3
	pktType=$5
	packet_size=$6
	fid=$8


	if(time>gotime){
		#bandwidth = total/time_interval * 8/1000 #kbps
		fid1_bw = fid1_total/time_interval * 8/1000 #kbps
		fid2_bw = fid2_total/time_interval * 8/1000 #kbps
		fid3_bw = fid3_total/time_interval * 8/1000
		print gotime, fid1_bw, fid2_bw, fid3_bw;
		#resetting for next batch
		#total=0;
		fid1_total=0;
		fid2_total=0;
		fid3_total=0;
		gotime+=time_interval;

		}

	#if not the time, add to the total
	#total+=packet_size;
	if(fid==1){fid1_total+=packet_size;}
	if(fid==2){fid2_total+=packet_size;}
	if(fid==3){fid3_total+=packet_size;}


}

END{
	;
}
