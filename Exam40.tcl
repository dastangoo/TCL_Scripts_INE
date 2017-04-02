#!/usr/bin/expect


set in_line "this		has	spaces and 	tabs "
regsub -all {[ \t]+} $in_line { } out_line1
regsub {[ \t]+} $in_line { } out_line2 
regsub -all "\[ \t\]" $in_line { } out_line3
regsub -all {\[ \t\]} $in_line { } out_line4
puts "$in_line"
puts "Curly braces: $out_line1"
puts "no all: $out_line2"
puts "quotes: $out_line3"
puts "curly braces and escapes: $out_line4"
