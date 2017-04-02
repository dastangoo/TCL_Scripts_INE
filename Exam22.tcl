#!/usr/bin

array set year [list {Jan} {31} {Feb} {28} {Mar} {31}]

#set days "$year(Jan)"
set days [expr $year(Jan)]
puts "$days"
