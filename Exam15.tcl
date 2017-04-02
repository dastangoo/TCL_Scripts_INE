#!/usr/bin/tclsh

set list1 {a b c d}
set list2 {e f g h}
set list3 {i j k l}

set replacedList [lreplace $list1 1 2 $list2]
puts "replace yields $replacedList"
