#!/usr/bin/tclsh

set list1 {a b c d}
set list2 {e f g h}
set list3 {i j k l}
set bigList [concat $list1 $list2 $list3]
puts "concat yields $bigList"
