#!/usr/bing/tclsh

set file_ptr [open Exam38.tcl r]
set file_data [read $file_ptr]
puts "$file_data"
close $file_ptr
