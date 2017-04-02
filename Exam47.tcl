#!/usr/bin/tclsh

package require Tk

proc power {base p} {
	set result 1
	while {$p > 0} {
		set result [expr $result * $base]
		set p [expr $p-1]
	}
	return $result
}

entry .base -width 6 -relief sunken -textvariable base
entry .power -width 6 -relief sunken -textvariable power 

label .lab1 -text "to the power"
label .lab2 -text "is"
label .lab3 -textvariable result 


pack .base .lab1 .power .lab2 .lab3 -side left -padx 1m -pady 2m
bind .base <Return> {set result [power $base $power]}
bind .base <Button-3> {set result [power $base $power]}
bind .base <Key-r> {set result [power $base $power]}

bind .power <Return> {set result [power $base $power]}
bind .power <3> {set result [power $base $power]}
bind .power <r> {set result [power $base $power]}


