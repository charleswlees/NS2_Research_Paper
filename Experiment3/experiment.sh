#Run all of the experiments
./get_data.sh 0
./get_data.sh 1
./get_data.sh 2
./get_data.sh 3
./get_data.sh 4
./get_data.sh 5

#Graph all of the combined graphs for each TCP version
cd Reno/
./combined_graphs.sh
cd ../

cd Sack/
./combined_graphs.sh
cd ../

