set var1 "quotedString"
set var2 {curlyBracesString}

puts "var1 is quotedString: $var1"
puts "var2 is curlyBracesString: $var2"

set string1 "arbitrary string"

set var1 "[string length $string1]"
set var2 {[string length $string1]}

puts "var1 is quotedString: $var1"
puts "var2 is curlyBracesString: $var2"


puts {var1 is a quoted string in a curly brace statement: $var1}
puts "The length of the string is [string length $var1]"
puts {The length of the string is [string length $var1]}
