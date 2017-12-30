tests-if
testIfFalse
	| states |
	states := (BLMSchemeInterpreter new eval: (#if cons: false cons: 42 cons: 51 cons) out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 51