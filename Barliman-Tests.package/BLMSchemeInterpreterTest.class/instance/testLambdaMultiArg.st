tests-lambda
testLambdaMultiArg
	| states |
	states := (BLMSchemeInterpreter new eval: #(lambda #(x y) #(list y x)) asConsTree out: x) runner runAll.
	self assert: states size equals: 1.
	self
		assert: states first => x
		equals: (BLMClosure tag cons: (#lambda cons: (#x cons: #y cons) cons: (#list cons: #y cons: #x cons) cons) cons: BLMSchemeInterpreter new initialEnvironment cons)