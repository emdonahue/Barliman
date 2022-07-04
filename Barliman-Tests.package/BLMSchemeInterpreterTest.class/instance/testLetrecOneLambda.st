tests-letrec
testLetrecOneLambda
	| states |
	states := (BLMSchemeInterpreter new eval: #(letrec #(#(fourtyTwo #(lambda #() 42))) fourtyTwo) asConsR out: x) runner runAll.
	self assert: states size equals: 1.
	self
		assert: states first => x
		equals: (BLMClosure tag cons: lambda42 cons: ((#rec cons: (#fourtyTwo cons: lambda42) cons) cons: BLMSchemeInterpreter new initialEnvironment) cons)