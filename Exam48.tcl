#!/usr/bin/tclsh

puts "Which protocol to use? (tcp/udp)"
set proto [gets stdin]

while { $proto != "tcp" && $proto != "udp" } {
	puts "Not a valid selection. Please input only \"tcp\" or \"udp\""
	puts "Which protoco to use? (tcp/udp) "
	set proto [gets stdin]
}


puts "Enter host to configure"
set host_name [gets stdin]

puts "What device type is this?"
puts "1) Router"
puts "2) Switch"
puts "3) Fabric Extender"
set devType [gets stdin]

while {$devType < 1 || $devType > 3 } {
	puts "Invalid option specified. Please select a valid otion below."
	puts "What device type is this"
	puts "1) Router"
	puts "2) Switch"
	puts "3) Fabric Extender"
	set devType [gets stdin]
}

 
switch $devType {
	1 {set devName "router"}
	2 {set devName "switch"}
	3 {set devName "fabric_extender"}
}


set devInfo [exec cat $devName.txt]
puts "======================================"
puts "Configuration data provided: "
puts "Protocol: $proto"
puts "Host name: $host_name"
puts "Device type: $devName"
puts "Configuration details for the $devName:\n$devInfo"
