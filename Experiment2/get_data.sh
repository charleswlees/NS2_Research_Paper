# Charlie Lees
# CS5700 HW3

# This script runs the network experiment for each TCP 
# variant and organizes the output

#Checks for command line arguments
if [ -z "$1" ]; then
	CBR=99
else
	CBR=$1
fi

#NewReno-Reno
cd NewReno-Reno/
./test.sh $CBR
cp fairGraph1 ../Export/
cp thrptGraph1 Throughput/
cp packetGraph1 PacketDrop/
cp bandGraph1 Bandwidth/
cp latGraph1 Latency/
cp fairGraph1 Fairness/
cd ../Export/
mv fairGraph1 fairGraph1NR-R
cd ../

#NewReno-Vegas
cd NewReno-Vegas/
./test.sh $CBR
cp fairGraph1 ../Export/
cp thrptGraph1 Throughput/
cp packetGraph1 PacketDrop/
cp bandGraph1 Bandwidth/
cp latGraph1 Latency/
cp fairGraph1 Fairness/
cd ../Export/
mv fairGraph1 fairGraph1NR-V
cd ../

#Reno-Reno
cd Reno-Reno/
./test.sh $CBR
cp fairGraph1 ../Export/
cp thrptGraph1 Throughput/
cp packetGraph1 PacketDrop/
cp bandGraph1 Bandwidth/
cp latGraph1 Latency/
cp fairGraph1 Fairness/
cd ../Export/
mv fairGraph1 fairGraph1R-R
cd ../

#Vegas-Vegas
cd Vegas-Vegas/
./test.sh $CBR
cp fairGraph1 ../Export/
cp thrptGraph1 Throughput/
cp packetGraph1 PacketDrop/
cp bandGraph1 Bandwidth/
cp latGraph1 Latency/
cp fairGraph1 Fairness/
cd ../Export/
mv fairGraph1 fairGraph1V-V
cd ../

#Graph
cd Export/
gnuplot graph.sh

#Rename
cd ../
./rename.sh $CBR

