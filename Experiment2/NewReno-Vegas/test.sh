#Checks for command line arguments
if [ -z "$1" ]; then
	CBR=99
else
	CBR=$1
fi

ns experiment.tcl $CBR
awk -f latency.awk trace_file.tr > latGraph1
awk -f throughput.awk trace_file.tr > thrptGraph1
awk -f packetdrops.awk trace_file.tr > packetGraph1
awk -f bandwidth.awk trace_file.tr > bandGraph1
awk -f fairness.awk thrptGraph1 > fairGraph1
gnuplot latPlotGen.sh
gnuplot thrptPlotGen.sh
gnuplot packetPlotGen.sh
gnuplot bandPlotGen.sh
gnuplot fairPlotGen.sh
