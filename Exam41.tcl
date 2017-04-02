#!/usr/bin/tclsh

set string1 "abc128akc920"
puts [regexp {[0-9]} $string1]

set string2 "abc528akc920"
puts [regexp {[0-9]} $string2]

puts [regexp {[0-9]+} $string2]

puts [regsub -all {[0-9]} $string1 {9} string2]

puts "$string1"
puts "$string2"

puts [regsub {[abc]} $string1 {x} string2]
puts "$string2"
puts [regsub -all {[abc]} $string1 {x} string2]
puts "$string2"

puts [regexp {[0-9]} $string1 match]
puts "$match"

set string3 "abc528akc920"
puts "$string3"
puts [regexp {[0-9]} $string3 match]
puts "$match"

puts [regexp {[0-9]*} $string3 match]
puts "$match"

puts [regexp {[0-9]+} $string3 match]
puts "$match"

puts [regexp -all {[0-9]+} $string3 match]
puts $match

puts [regexp -all {[0-9]*} $string3 match]
puts "$match"

puts [regexp {[0-9][a-z]} $string3 match]
puts "$match"

puts [regexp -all {[0-9][a-z]} $string3 match] 
puts "$match"

puts [regexp {[0-9]*[a-z]*} $string3 match]
puts "$match"

puts [regexp {[0-9]+[a-z]+} $string3 match]
puts "$match"
