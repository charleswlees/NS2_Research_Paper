# Charlie Lees
# CS5700 HW3
# This script is run to run the whole experiment


#Run all of the experiments
./get_data.sh 2
./get_data.sh 4
./get_data.sh 6
./get_data.sh 8
./get_data.sh 9
./get_data.sh 10

#Graph all of the combined graphs for each TCP version
cd NewReno-Reno/
./combined_graphs.sh
cd ../

cd NewReno-Vegas/
./combined_graphs.sh
cd ../

cd Reno-Reno/
./combined_graphs.sh
cd ../

cd Vegas-Vegas/
./combined_graphs.sh
cd ../
