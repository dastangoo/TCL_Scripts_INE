#!/usr/bin/tclsh

set string1 "Test1"
set string2 "Test2"

set result \
[expr [string length $string1] + \
[string length $string2]]

puts "$result"
