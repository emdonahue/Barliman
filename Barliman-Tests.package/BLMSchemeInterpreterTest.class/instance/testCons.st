tests-primitive
testCons
	| states |
	states := (BLMSchemeInterpreter new eval: #(cons #(quote 42) #(quote 51)) asConsR  out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: (42 cons: 51)