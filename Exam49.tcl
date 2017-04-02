#!/usr/bin/tclsh

package require Tk

proc main {} {
	if {[lsearch -exact [font names] TkDefaultFont] == -1} {
		#pack a good font to use since some versions of Tk don't define this
		font create TkDefaultFont -family Helvetica -size 12
	}
	eval font create TkBoldFont [font actual TkDefaultFont] -weight bold
}

proc buildUi {} {
	frame .toolbar 
	scrollbar .vsb -command [list .t yview]
	text .t -width 80 -height 20 -yscrollcommand [list .vsb set] -highlightthickness 0
	
	.t tag configure command -font TkBoldFont
	.t tag configure error -font TkDefaultFont -foreground firebrick 
	.t tag configure output -font TkDefaultFont -foreground black 
	
	set filepath "/home/test"
	entry .ent -text "path" -textvariable filePath -state normal 

	
	grid .toolbar -sticky nsew 
	grid .t .vsb -sticky nsew 
	grid rowconfigure . 1 -weight 1
	grid columnconfigure . 0 -weight 1 
	
	set i 0 
	button .b0 -text date -command [list runCommand "date"]
	button .b1 -text uptime -command [list runCommand "uptime"]
	button .b2 -text "ls -l" -command [list runCommand "ls -l"]

	pack .b0 -in .toolbar -side left 
	pack .b1 -in .toolbar -side left
	pack .b2 -in .toolbar -side left 
	pack .ent -in .toolbar -side left

	focus .ent 
	bind . <Return> {runCommand "ls -l $filePath"}			
}

proc output {type text} {
	.t configure -state normal 
	.t insert end $text $type "\n"
	.t see end 
	.t configure -state disabled
}

proc runCommand {cmd} {
	output command "$cmd" 
	set f [open "| $cmd" "r"]
	fconfigure $f -blocking false
	fileevent $f readable [list handleFileEvent $f]
}


proc closePipe {f} {
	fconfigure $f -blocking true
	if {[catch {close $f} error]} {	
		output error $err
	}
}
proc handleFileEvent {f} {
	set status [catch {gets $f line} result]
	if {$status != 0} {	
		output error $result 
		closePipe $f 
	} elseif { $result >= 0 } {
		output normal $line
	} elseif {[eof $f]} {
		closePipe $f
	} elseif {[fblocked $f]} {
		#read blocked so do nothing
	}
}

main
buildUi
