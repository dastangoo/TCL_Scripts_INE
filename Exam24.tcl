#!/usr/bin/tclsh

set sum 2 
set sum [expr $sum + 2]
puts "$sum"

set num [expr 2 + 2]
puts "$num"
set mult [expr 2 * 2]
puts "$mult"
puts "[expr 2 * 2]"
puts {[expr 2 * 2]}
