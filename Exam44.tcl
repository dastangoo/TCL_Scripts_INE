#!/usr/bin/tclsh

proc Div {a b} {
	if {$b == 0} {
		error "DivByZero" "You attempted to divide by zero. Make sure the second parameter is not zero" 401
	} else {
		return [expr $a/$b]
	}
}

if {[catch { puts "[Div 10 0]"} errmsg] } {
	puts "ErrorMsg: $errmsg"
	puts "ErrorCode: $errorCode"
	puts "ErrorInfo:\n$errorInfo\n"
}
