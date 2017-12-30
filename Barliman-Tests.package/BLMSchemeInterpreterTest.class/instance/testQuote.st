tests-quote
testQuote
	| states |
	states := (BLMSchemeInterpreter new eval: (#quote cons: 42 cons) out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 42