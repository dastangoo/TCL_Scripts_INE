#!/usr/bin/tclsh


set list1 {a b c d}
set sortedList [lsort -decreasing $list1]
puts "$sortedList"
