# Charlie Lees
# CS5700 HW3
# Network Simulation

#Detects Command Line Argument
if { $argc > 0} {
	set RED_Count [lindex $argv 0]
} else {set RED_Count 0}

#logic to determine how many streams are RED
switch $RED_Count {
	"1" {
		set lt1 "RED"
		set lt2 "DropTail"
		set lt3 "DropTail"
		set lt4 "DropTail"
		set lt5 "DropTail"
	}
	"2" {
		set lt1 "RED"
		set lt2 "RED"
		set lt3 "DropTail"
		set lt4 "DropTail"
		set lt5 "DropTail"
	}
	"3" {
		set lt1 "RED"
		set lt2 "RED"
		set lt3 "RED"
		set lt4 "DropTail"
		set lt5 "DropTail"
	}
	"4" {
		set lt1 "RED"
		set lt2 "RED"
		set lt3 "RED"
		set lt4 "RED"
		set lt5 "DropTail"
	}
	"5" {
		set lt1 "RED"
		set lt2 "RED"
		set lt3 "RED"
		set lt4 "RED"
		set lt5 "RED"
	}
	default {
		set lt1 "DropTail"
		set lt2 "DropTail"
		set lt3 "DropTail"
		set lt4 "DropTail"
		set lt5 "DropTail"

	}
}

#Set up Simulation
set ns [new Simulator]


set tf [open trace_file.tr w]
$ns trace-all $tf

#Define Nodes
set node_(n1) [$ns node]
set node_(n5) [$ns node]
set node_(n2) [$ns node]
set node_(n3) [$ns node]
set node_(n4) [$ns node]
set node_(n6) [$ns node]

#Define the connections
$ns duplex-link $node_(n1) $node_(n2) 10Mb 2ms ${lt1} 
$ns duplex-link $node_(n5) $node_(n2) 10Mb 2ms ${lt2}
$ns duplex-link $node_(n2) $node_(n3) 10Mb 14ms ${lt3}
$ns duplex-link $node_(n4) $node_(n3) 10Mb 2ms ${lt4}
$ns duplex-link $node_(n6) $node_(n3) 10Mb 2ms ${lt5}

#Orientation of nodes for the Animator
$ns duplex-link-op $node_(n1) $node_(n2) orient right-down
$ns duplex-link-op $node_(n5) $node_(n2) orient right-up
$ns duplex-link-op $node_(n2) $node_(n3) orient right
$ns duplex-link-op $node_(n4) $node_(n3) orient left-down
$ns duplex-link-op $node_(n6) $node_(n3) orient left-up



#TCP Connection
set tcp1 [$ns create-connection TCP/Sack1 $node_(n1) TCPSink/Sack1 $node_(n4) 0]
$tcp1 set window_ 15

$tcp1 set fid_ 1;



#CBR-UDP Connection
set udpc [$ns create-connection UDP $node_(n5) Null $node_(n6) 0]
$udpc set fid_ 2;

#FTP Window
set ftp1 [$tcp1 attach-source FTP]


#CBR
set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udpc
$cbr set type_ CBR
$cbr set packet_size_ 1000
$cbr set rate_ 9mb
$cbr set random_ false


$ns at 3.0 "$cbr start"
$ns at 0.0 "$ftp1 start"
$ns at 10 "finish"

#end of simulation
proc finish {} {
		global ns nf
		$ns flush-trace
		
    exit 0
}

$ns run
