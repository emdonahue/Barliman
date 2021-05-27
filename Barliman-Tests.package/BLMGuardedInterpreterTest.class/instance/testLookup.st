tests - ground
testLookup
	self assert: (interpreter eval: #x env: ((#x cons: 1) cons)) equals: 1.