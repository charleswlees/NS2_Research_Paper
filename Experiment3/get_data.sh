
#Checks for command line arguments
if [ -z "$1" ]; then
	CBR=99
else
	CBR=$1
fi

#Reno
cd Reno/
./test.sh $CBR
cp thrptGraph1 ../Export/
cp thrptGraph1 Throughput/
cp packetGraph1 PacketDrop/
cp bandGraph1 Bandwidth/
cp latGraph1 Latency/
cp fairGraph1 Fairness/
cp fairGraph1 ../Export_F
cp latGraph1 ../Export_L
cp packetGraph1 ../Export_P
cd ../Export_L/
mv latGraph1 latGraph1R
cd ../Export_P/
mv packetGraph1 packetGraph1R
cd ../Export/
mv thrptGraph1 thrptGraph1R
cd ../Export_F/
mv fairGraph1 fairGraph1R
cd ../

#Sack
cd Sack/
./test.sh $CBR
cp thrptGraph1 ../Export/
cp thrptGraph1 Throughput/
cp packetGraph1 PacketDrop/
cp bandGraph1 Bandwidth/
cp latGraph1 Latency/
cp fairGraph1 Fairness/
cp fairGraph1 ../Export_F
cp latGraph1 ../Export_L
cp packetGraph1 ../Export_P
cd ../Export_L/
mv latGraph1 latGraph1S
cd ../Export_P/
mv packetGraph1 packetGraph1S
cd ../Export/
mv thrptGraph1 thrptGraph1S
cd ../Export_F/
mv fairGraph1 fairGraph1S
cd ../

#Graph
cd Export/
gnuplot graph.sh

cd ../Export_L/
gnuplot graph.sh

cd ../Export_P/
gnuplot graph.sh

cd ../Export_F/
gnuplot graph.sh
#Rename
cd ../
./rename.sh $CBR

