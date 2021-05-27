tests - ground
testCons
	self assert: (interpreter eval: #(cons (quote 1) (quote 2))) equals: (1 cons: 2).