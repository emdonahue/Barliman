tests
testApply
	self assert: (interpreter eval: #((lambda (x) x) (quote 1))) equals: (Cons read: #(((x . (quote 1))) (x) (x))).