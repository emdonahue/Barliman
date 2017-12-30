tests-letrec
testLetrecTwoLambdas
	| states |
	states := (BLMSchemeInterpreter new
		eval: #(letrec #(#(fourtyTwo #(lambda #() 42)) #(fiftyOne #(lambda #() 51))) #(cons #(fourtyTwo) #(fiftyOne))) asConsTree
		out: x) runner runAll.
	self assert: states size equals: 1.
	self
		assert: states first => x
		equals: (42 cons: 51)