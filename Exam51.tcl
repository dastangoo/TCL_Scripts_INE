#!/usr/bin/tclsh

source "Exam50.tcl"
#Source in to get access to get_dir_name and get_file_name

set url  "http://nginx.org/download/nginx1.7.8.tar.gz"
set dirName [get_dir_name $url]
if {$dirName == -1} {
	puts "Directory name could not be determined from the url $url"
} else {
	puts "Directory name was determined to be $dirName"
}

set fileName [get_file_name $url]
if {$fileName == -1} {
	puts "File name could not be determined from the url $url"
} else {
	puts "File name was determined to be $fileName"
}


