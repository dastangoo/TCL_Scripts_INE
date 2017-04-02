#!/usr/bin/tclsh

lappend appendList "this" "is" "appended"
puts "append yields $appendList"

puts "The third letter is [lindex $appendList 2]"
