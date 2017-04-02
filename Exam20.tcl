#!/usr/bin/tclsh

array set users [list {1} {John} {2} {Mary} {3} {Sue}]
puts "$users(1)"

array unset users
puts "$users(1)"
