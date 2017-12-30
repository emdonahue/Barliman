tests-lookup
testLookupFive
	| states |
	states := (BLMSchemeInterpreter new eval: #five env: (#val cons: (#five cons: five)) cons out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: five