#!/usr/bin/tclsh

proc contains { searchIn searchFor } {

	if { [string length $searchFor] > [string length $searchIn] } {
		return "The needle is larger than the haystack."
	}
	
	set result [string match "*$searchFor*" $searchIn]
	if {$result == 1} {
		return "Match Succeeded"
	}
	
	set searchFor [string tolower $searchFor]
	set searchIn [string tolower $searchIn]
	if {$result == 0} {
		return "Match Failed"
	}
	else {
		return "Match only when disregarding case"
	}
}
set string1 "main.c"
set string2 ".c"

set result [string match "*$string2" $string1]
puts "$result"

set doesItMatch [contains $string1 $string2]
puts "$doesItMatch"

