#!/usr/bin/tclsh
set listlist [list "this" "is" "now" "a" "list"]
puts "list yields $listlist"
puts "list yields [lindex $listlist 2]"
