#!/usr/bin/tclsh

set string1 "abcdeffffeghhfffffffffabffafaaffafafffffffabcdefff"

set num [regexp -all {f{4,6}} $string1 output]
puts "result is $output"
puts "total f's found is $num"
