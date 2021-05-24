tests
testList 	
	self assert: (interpreter eval: #(list)) equals: Cons empty.
	self assert: (interpreter eval: #(list (quote 1))) equals: 1 cons.
	self assert: (interpreter eval: #(list #x #y (quote 3)) env: ((#x cons: 1) cons: (#y cons: 2) cons)) equals: (1 cons: 2 cons: 3 cons).