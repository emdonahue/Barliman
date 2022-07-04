tests-letrec
testLetrecRecurseSecondLambda
	| states |
	states := (BLMSchemeInterpreter new
		eval: #(letrec #( #(callFourtyTwo #(lambda #() #(fourtyTwo))) #(fourtyTwo #(lambda #() 42))) #(callFourtyTwo)) asConsR
		out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 42