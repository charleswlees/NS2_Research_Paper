#throughput.awk

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
#	level=$4
	pktType=$5
	packet_size=$6

if(time>gotime){#Calculates throughput at given intervals
#if(time>0){
	print gotime, (packet_size * recv * 8.0)/1000; #packet size * ... gives results in sbps
	gotime+= time_interval;
	recv=0;
}

#Calculate Throughput
#if((event=="r")&&(pktType=="tcp")&&(level=="AGT"))
if((event=="r")&&(pktType=="tcp"))
{
	recv++;
}
}

END{
	;
}
