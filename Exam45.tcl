#!/usr/bin/tclsh

if {[catch {set file [open "ls.txt" "r"]} result]} {
puts "ErrorMsg: $result"
puts "ErrorCode: $errorCode"
puts "ErrorInfo:\n$errorInfo\n"
} else {
puts "The file is open"
}


if {[catch {expr 5/0} result]} {
puts "ErrorMsg: $result"
puts "ErrorCode: $errorCode"
puts "ErrorInfo:\n$errorInfo\n"
} else {
set result {expr 5/1}
puts "Completed the division operation $result"
}
