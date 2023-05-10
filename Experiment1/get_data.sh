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

#NewReno
cd NewReno/
./test.sh $CBR
cp thrptGraph1 ../Export/
cp thrptGraph1 Throughput/
cp packetGraph1 PacketDrop/
cp bandGraph1 Bandwidth/
cp latGraph1 Latency/
cp latGraph1 ../Export_L
cp packetGraph1 ../Export_P
cp bandGraph1 ../Export_B
cd ../Export_B
mv bandGraph1 bandGraph1NR
cd ../Export_L/
mv latGraph1 latGraph1NR
cd ../Export_P/
mv packetGraph1 packetGraph1NR
cd ../Export/
mv thrptGraph1 thrptGraph1NR
cd ../

#Reno
cd Reno/
./test.sh $CBR
cp thrptGraph1 ../Export/
cp thrptGraph1 Throughput/
cp packetGraph1 PacketDrop/
cp bandGraph1 Bandwidth/
cp latGraph1 Latency/
cp latGraph1 ../Export_L
cp packetGraph1 ../Export_P
cp bandGraph1 ../Export_B
cd ../Export_B
mv bandGraph1 bandGraph1R
cd ../Export_L/
mv latGraph1 latGraph1R
cd ../Export_P/
mv packetGraph1 packetGraph1R
cd ../Export/
mv thrptGraph1 thrptGraph1R
cd ../

#Tahoe
cd Tahoe/
./test.sh $CBR
cp thrptGraph1 ../Export/
cp thrptGraph1 Throughput/
cp packetGraph1 PacketDrop/
cp bandGraph1 Bandwidth/
cp latGraph1 Latency/
cp latGraph1 ../Export_L
cp packetGraph1 ../Export_P
cp bandGraph1 ../Export_B
cd ../Export_B
mv bandGraph1 bandGraph1T
cd ../Export_L/
mv latGraph1 latGraph1T
cd ../Export_P/
mv packetGraph1 packetGraph1T
cd ../Export/
mv thrptGraph1 thrptGraph1T
cd ../

#Vegas
cd Vegas/
./test.sh $CBR
cp thrptGraph1 ../Export/
cp thrptGraph1 Throughput/
cp packetGraph1 PacketDrop/
cp bandGraph1 Bandwidth/
cp latGraph1 Latency/
cp latGraph1 ../Export_L
cp packetGraph1 ../Export_P
cp bandGraph1 ../Export_B
cd ../Export_B
mv bandGraph1 bandGraph1V
cd ../Export_L/
mv latGraph1 latGraph1V
cd ../Export_P/
mv packetGraph1 packetGraph1V
cd ../Export/
mv thrptGraph1 thrptGraph1V
cd ../

#Graph
cd Export/
gnuplot graph.sh

cd ../Export_L/
gnuplot graph.sh

cd ../Export_P/
gnuplot graph.sh

cd ../Export_B/
gnuplot graph.sh
#Rename
cd ../
./rename.sh $CBR

