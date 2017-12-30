tests-primitive
testTrue
	| states |
	states := (BLMSchemeInterpreter new eval: true out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: true