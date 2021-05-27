tests - ground
testCdr
	self assert: (interpreter eval: #(cdr (list (quote 1)))) equals: Cons empty.
	self assert: (interpreter eval: #(cdr (list (quote 1) (quote 2)))) equals: 2 cons.