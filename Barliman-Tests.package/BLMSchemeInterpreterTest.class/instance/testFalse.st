tests-primitive
testFalse
	| states |
	states := (BLMSchemeInterpreter new eval: false out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: false