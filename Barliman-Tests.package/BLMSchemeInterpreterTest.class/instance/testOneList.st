tests-list
testOneList
	| states |
	states := (BLMSchemeInterpreter new eval: (#list cons: (#quote cons: 1 cons) cons) out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 1 cons