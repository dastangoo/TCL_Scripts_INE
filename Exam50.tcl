#!/usr/bin/tclsh 


###################################################################
# procedure: get_dir_name 
# Input: url - the URL of a file that will be downloaded.
# Returns: dirName - The directory name that is derived from the URL 
###################################################################
proc get_dir_name {url} {
        set strip_end ".tar.gz"
        set strip_beginning {.*\/}
        set dirName 0

        regsub -- $strip_end $url "" noEnding
        regsub -- $strip_beginning $noEnding "" dirName
        if {$dirName == ""} {
                set dirName "-1"
        }
        return $dirName
}

####################################################################
# Procedure: get_file_name
# Input: url - The URL of a file that will be downloaded.
# Returns: dirName - The directory name that is derived from the URL
####################################################################
proc get_file_name {url} {
        set strip_beginning {.*\/}
        set fileName 0

        regsub -- $strip_beginning $url "" fileName
        if {$fileName == ""} {
                set fileName "-1"
        }
        return $fileName
}
