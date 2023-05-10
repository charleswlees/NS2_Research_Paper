# Charlie Lees
# CS5700 HW3
#packetdrops.awk

BEGIN{
recv=0;
gotime=0;#Time we start recording
time=0;
packet_size=$6;
time_interval=1;#interval between recordings
}
#body
{
	event=$1
	time=$2
	node_id=$3
	pktType=$5
	packet_size=$6

if(time>gotime){#Calculates throughput at given intervals
	print gotime, recv
	gotime+= time_interval;
	recv=0;
}

#Calculate Throughput
if((event=="d")&&(pktType=="tcp"))
{
	recv++;
}
}

END{
	;
}
