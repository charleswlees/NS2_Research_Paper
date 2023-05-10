# Charlie Lees
# CS5700 HW3

#Renames all the data files for the given experiment for the given CBR value


#Checks if there is a CBR value given as a command line
if [ -z "$1" ]; then
	CBR=99
else
	CBR=$1
fi
	
#NewReno
cd NewReno/
	#Bandwidth
	cd Bandwidth/
	mv bandGraph1 bandGraph1_${CBR}MB
	#Latency
	cd ../Latency/
	mv latGraph1 latGraph1_${CBR}MB
	#PacketDrop
	cd ../PacketDrop
	mv packetGraph1 packetGraph1_${CBR}MB
	#Throughput
	cd ../Throughput
	mv thrptGraph1 thrptGraph1_${CBR}MB
	cd ../../
#Reno
cd Reno/
	#Bandwidth
	cd Bandwidth/
	mv bandGraph1 bandGraph1_${CBR}MB
	#Latency
	cd ../Latency/
	mv latGraph1 latGraph1_${CBR}MB
	#PacketDrop
	cd ../PacketDrop
	mv packetGraph1 packetGraph1_${CBR}MB
	#Throughput
	cd ../Throughput
	mv thrptGraph1 thrptGraph1_${CBR}MB
	cd ../../
#Tahoe
cd Tahoe/
	#Bandwidth
	cd Bandwidth/
	mv bandGraph1 bandGraph1_${CBR}MB
	#Latency
	cd ../Latency/
	mv latGraph1 latGraph1_${CBR}MB
	#PacketDrop
	cd ../PacketDrop
	mv packetGraph1 packetGraph1_${CBR}MB
	#Throughput
	cd ../Throughput
	mv thrptGraph1 thrptGraph1_${CBR}MB
	cd ../../
#Vegas
cd Vegas/
	#Bandwidth
	cd Bandwidth/
	mv bandGraph1 bandGraph1_${CBR}MB
	#Latency
	cd ../Latency/
	mv latGraph1 latGraph1_${CBR}MB
	#PacketDrop
	cd ../PacketDrop
	mv packetGraph1 packetGraph1_${CBR}MB
	#Throughput
	cd ../Throughput
	mv thrptGraph1 thrptGraph1_${CBR}MB
	cd ../../

#CombinedThroughputGraph
	cp -TR Export ${CBR}MB_CombinedThroughput
	#mkdir Export
	cp graph.sh Export/

#CombinedLatencyGraph
	cp -TR Export_L ${CBR}MB_CombinedLatency
	#mkdir Export
	#cp graph.sh Export_L/
#CombinedPacketlossGraph
	cp -TR Export_P ${CBR}MB_CombinedPacketloss
	#mkdir Export
	#cp graph.sh Export_P/	
#CombinedBandwidthGraph
	cp -TR Export_B ${CBR}MB_CombinedBandwidth
