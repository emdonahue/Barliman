tests-lookup
testLookupRecFirst
	| states |
	states := (BLMSchemeInterpreter new eval: #fourtyTwo env: recEnv out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: (BLMClosure tag cons: lambda42 cons: recEnv cons)