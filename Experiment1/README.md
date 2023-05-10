Charlie Lees
# Experiment 1

This experiment focuses on testing Tahoe, Reno, New-Reno, and Vegas under different CBR congestion levels

## Navigation

The Experiment 1 folder has an experiment.sh script. This runs the entire experiment. 
Inside of each variant's folder is a test.sh script which runs the simulation as well as graphs it's output.
It is important to note that test.sh takes in the CBR rate as a command line argument.
Each variant also has the experiment.tcl file which informs the NS-2 Network simulator.

## Running the experiment
```bash
#From the Experiment 1 Folder
./experiment.sh
```


