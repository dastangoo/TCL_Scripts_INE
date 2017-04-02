#!/usr/bin/tclsh

array set users [list {1} {John} {2} {Marry} {3} {Sue}]

foreach index [array names users] {
	puts "user name $index is $users($index)."
}
