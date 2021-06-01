tests - ground
testCdr
	self assert: (interpreter eval: #(cdr x) env: #((x . (1)))) equals: Cons empty.
	self assert: (interpreter eval: #(cdr x) env: #((x . (1 2)))) equals: 2 cons.