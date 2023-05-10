# Charlie Lees
# CS5700 HW3
# Network Simulation

#Detects Command Line Argument
if { $argc > 0} {
	set CBR_rate [lindex $argv 0]
} else {set CBR_rate 20 }


#Set up Simulation
set ns [new Simulator]


set tf [open trace_file.tr w]
$ns trace-all $tf

#Define nodes
set node_(n1) [$ns node]
set node_(n5) [$ns node]
set node_(n2) [$ns node]
set node_(n3) [$ns node]
set node_(n4) [$ns node]
set node_(n6) [$ns node]

#Define the connections
$ns duplex-link $node_(n1) $node_(n2) 10Mb 2ms DropTail
$ns duplex-link $node_(n5) $node_(n2) 10Mb 2ms DropTail
$ns duplex-link $node_(n2) $node_(n3) 10Mb 14ms DropTail
$ns duplex-link $node_(n4) $node_(n3) 10Mb 2ms DropTail
$ns duplex-link $node_(n6) $node_(n3) 10Mb 2ms DropTail

#Orientation of nodes for the Animator
$ns duplex-link-op $node_(n1) $node_(n2) orient right-down
$ns duplex-link-op $node_(n5) $node_(n2) orient right-up
$ns duplex-link-op $node_(n2) $node_(n3) orient right
$ns duplex-link-op $node_(n4) $node_(n3) orient left-down
$ns duplex-link-op $node_(n6) $node_(n3) orient left-up



#TCP Connection
set tcp1 [$ns create-connection TCP/Vegas $node_(n1) TCPSink $node_(n4) 0]
$tcp1 set window_ 15


set tcpc [$ns create-connection UDP $node_(n5) Null $node_(n6) 0]

#FTP Window
set ftp1 [$tcp1 attach-source FTP]


#CBR
set cbr [new Application/Traffic/CBR]
$cbr attach-agent $tcpc
$cbr set type_ CBR
$cbr set packet_size_ 1000
$cbr set rate_ ${CBR_rate}mb
$cbr set random_ false


$ns at 0.0 "$cbr start"
$ns at 0.0 "$ftp1 start"
$ns at 10 "finish"

#end of simulation
proc finish {} {
		global ns nf
		$ns flush-trace
		
    exit 0
}

$ns run
