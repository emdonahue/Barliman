tests-lookup
testLookupValAfterRec
	| states |
	states := (BLMSchemeInterpreter new eval: #sixty env: recEnv out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 60