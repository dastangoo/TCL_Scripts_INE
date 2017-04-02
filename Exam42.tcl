#!/usr/bin/tclsh

set string {
<root>
	<child>
		<subchild>sub1</subchild>
	</child>
	<child>
		<subchild>sub2</subchild>
	</child>
	<child>
		<subchild>sub3</subchild>
	</child>
</root>
}

regexp {<subchild>.*</subchild>} $string match
puts "(0 or more, greedy):\n $match"
regexp {<subchild>.*?</subchild>} $string match
puts "(0 or more, non-greedy):\n $match"
regexp {<subchild>.+</subchild>} $string match
puts "(1 or more, greedy):\n $match"
regexp {<subchild>.+?</subchild>} $string match
puts "(1 or more, non-greedy):\n $match"
regexp {<subchild>.?</subchild>} $string match
puts "(0 or 1, greedy):\n $match"
regexp {<subchild>.??</subchild>} $string match
puts "(0 or 1, non-greedy):\n $match"
