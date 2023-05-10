# Charlie Lees
# CS5700 HW3

#Renames all the files for the given experiment for the given CBR value


#Checks if there is a CBR value given as a command line
if [ -z "$1" ]; then
	CBR=99
else
	CBR=$1
fi
	
#NewReno-Reno
cd NewReno-Reno/
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
	#Fairness	
	cd ../Fairness
	mv fairGraph1 fairGraph1_${CBR}MB
	cd ../../	
#NewReno-Vegas
cd NewReno-Vegas/
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
	#Fairness	
	cd ../Fairness
	mv fairGraph1 fairGraph1_${CBR}MB
	cd ../../	
#Reno-Reno
cd Reno-Reno/
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
	#Fairness	
	cd ../Fairness
	mv fairGraph1 fairGraph1_${CBR}MB
	cd ../../	
#Vegas-Vegas
cd Vegas-Vegas/
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
	#Fairness	
	cd ../Fairness
	mv fairGraph1 fairGraph1_${CBR}MB
	cd ../../	

#CombinedThroughputGraph
	cp -TR Export ${CBR}MB_CombinedFairness
	#mkdir Export
	cp graph.sh Export/
