#!/usr/bin/tclsh

set string1 "abcdefg"
puts "$string1"
set string2 "abcefg"
puts "$string2"
puts [string match "*cde*" $string1]

