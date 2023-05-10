Charlie Lees
# Experiment 2

This experiment focuses on testing four TCP Variant pairs under different levels of CBR flow:
* NewReno-Reno
* NewReno-Vegas
* Reno-Reno
* Vegas Vegas


## Navigation

The Experiment 2 folder has an experiment.sh script. This runs the entire experiment. 
Inside of each variant pair's folder is a test.sh script which runs the simulation as well as graphs it's output.
It is important to note that test.sh takes in the CBR rate as a command line argument.
Each variant pair also has the experiment.tcl file which informs the NS-2 Network simulator.

## Running the experiment
```bash
#From the Experiment 2 Folder
./experiment.sh
```


