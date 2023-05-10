#throughput.awk

BEGIN{
recv=0;
fid1_count = 0;
fid2_count = 0;
fid3_count = 0;
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
	fid = $8

if(time>gotime){#Calculates throughput at given intervals
#if(time>0){
	fid1_recv=(packet_size * fid1_count * 8.0)/1000;
	fid2_recv=(packet_size * fid2_count * 8.0)/1000;
	fid3_recv=(packet_size * fid3_count * 8.0)/1000;
	print gotime, fid1_recv, fid2_recv, fid3_recv; #packet size * ... gives results in bps
	gotime+= time_interval;
	#recv=0;
	fid1_count = 0;
	fid2_count = 0;
	fid3_count = 0;
}

#Calculate Throughput
#if((event=="r")&&(pktType=="tcp")&&(level=="AGT"))
if((event=="r")&&(pktType=="tcp"))
{
	#recv++;
	if(fid==1){fid1_count++}
	if(fid==2){fid2_count++}
	if(fid==3){fid3_count++}

}
}

END{
	;
}
