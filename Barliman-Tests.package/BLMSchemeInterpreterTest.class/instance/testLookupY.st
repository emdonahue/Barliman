tests-lookup
testLookupY
	| states |
	states := (BLMSchemeInterpreter new eval: #y env: x1y2 out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 2