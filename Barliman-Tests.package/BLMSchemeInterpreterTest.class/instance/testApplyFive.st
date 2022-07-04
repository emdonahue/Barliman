tests-apply
testApplyFive
	| states |
	states := (BLMSchemeInterpreter new eval: #(five #(quote 42)) asConsR env: (#val cons: (#five cons: five)) cons out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 5