tests-lambda
testLambdaIdentity
	| states |
	states := (BLMSchemeInterpreter new eval: (#lambda cons: #x cons cons: #x cons) out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: (BLMClosure tag cons: (#lambda cons: #x cons cons: #x cons) cons: BLMSchemeInterpreter new initialEnvironment cons)