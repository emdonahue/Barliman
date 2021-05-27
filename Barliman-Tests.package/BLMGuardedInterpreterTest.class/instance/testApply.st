tests - ground
testApply
	self assert: (interpreter eval: #((lambda (x) x) (quote 1))) equals: 1.
	self assert: (interpreter eval: #((lambda (x y) (list y x)) (quote 1) (quote 2))) equals: (2 cons: 1 cons).