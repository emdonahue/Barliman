tests-lookup
testLookupX
	| states |
	states := (BLMSchemeInterpreter new eval: #x env: x1y2 out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 1