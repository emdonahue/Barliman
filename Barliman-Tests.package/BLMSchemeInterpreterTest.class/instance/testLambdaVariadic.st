tests-lambda
testLambdaVariadic
	| states |
	states := (BLMSchemeInterpreter new eval: #(lambda x x) asConsR out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: (BLMClosure tag cons: (#lambda cons: #x cons: #x cons) cons: BLMSchemeInterpreter new initialEnvironment cons)