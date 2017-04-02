#!/usr/bin/tclsh

array set users [list {1} {John} {2} {Mary} {3} {Sue}]
puts "$users(1)"
puts "There are [array size users] users."
