
#Renames all the files for the given experiment for the given CBR value


#Checks if there is a CBR value given as a command line
if [ -z "$1" ]; then
	CBR=99
else
	CBR=$1
fi
	
#Reno
cd Reno/
	#Bandwidth
	cd Bandwidth/
	mv bandGraph1 bandGraph1_${CBR}
	#Latency
	cd ../Latency/
	mv latGraph1 latGraph1_${CBR}
	#PacketDrop
	cd ../PacketDrop
	mv packetGraph1 packetGraph1_${CBR}
	#Throughput
	cd ../Throughput
	mv thrptGraph1 thrptGraph1_${CBR}
	#Fairness
	cd ../Fairness
	mv fairGraph1 fairGraph1_${CBR}	
	cd ../../
#Sack
cd Sack/
	#Bandwidth
	cd Bandwidth/
	mv bandGraph1 bandGraph1_${CBR}
	#Latency
	cd ../Latency/
	mv latGraph1 latGraph1_${CBR}
	#PacketDrop
	cd ../PacketDrop
	mv packetGraph1 packetGraph1_${CBR}
	#Throughput
	cd ../Throughput
	mv thrptGraph1 thrptGraph1_${CBR}
	#Fairness
	cd ../Fairness
	mv fairGraph1 fairGraph1_${CBR}
	cd ../../


#CombinedThroughputGraph
	cp -TR Export ${CBR}_CombinedThroughput
	#mkdir Export
	#cp graph.sh Export/
#CombinedLatencyGraph
	cp -TR Export_L ${CBR}_CombinedLatency
	#mkdir Export
	#cp graph.sh Export_L/
#CombinedPacketlossGraph
	cp -TR Export_P ${CBR}_CombinedPacketloss
	#mkdir Export
	#cp graph.sh Export_P/	
#CombinedFairness
	cp -TR Export_F ${CBR}_CombinedFairness
