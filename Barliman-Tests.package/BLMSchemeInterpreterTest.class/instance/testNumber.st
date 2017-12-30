tests
testNumber
	| states |
	states := (BLMSchemeInterpreter new eval: 42  out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 42