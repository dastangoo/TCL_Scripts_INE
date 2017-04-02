#!/usr/bin/tclsh

set value [string match "*.c" "main.c"]
puts "$value"

puts "[string match "*.c" "main.c"]"

set str "Test"
puts "[string length $str]"

puts [string length {foo}]

set str1 "abcd"
puts [string index $str 2]

puts [string range $str 1 2]

puts [toupper $str]
