tests-lookup
testLookupRecSecond
	| states |
	states := (BLMSchemeInterpreter new eval: #fiftyOne env: recEnv out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: (BLMClosure tag cons: lambda51 cons: recEnv cons)