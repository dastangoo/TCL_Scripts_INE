#!/usr/bin/tclsh

set list2 {e f g h}
set insertedList [linsert $list2 2 "this" "does" "not" "belong"]
puts "insert yields $insertedList"
