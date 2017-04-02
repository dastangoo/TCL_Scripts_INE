#!/usr/bin/tclsh

puts "$argc"
puts "$argv0"

set i 0
foreach arg $argv {
	puts "arg$i is $arg"
	incr i
}
