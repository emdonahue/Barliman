tests-list
testEmptyList
	| states |
	states := (BLMSchemeInterpreter new list: #list cons env: BLMSchemeInterpreter new initialEnvironment out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: Cons empty