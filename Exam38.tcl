#!/usr/bin/tclsh

set num  $argc
set script_name  $argv0

puts "You supplied $num arguments."

set first_arg [lindex $argv 0]
set second_arg [lindex $argv 1]

puts "The first argument is $first_arg"
puts "The second argument is $second_arg"

set i 0

foreach arg $argv {
	puts "arg$i is $arg"
	incr i
}

for {set i 0} {$i < $num} {incr i} {
	puts "The $i argument is [lindex $argv $i]"
}
