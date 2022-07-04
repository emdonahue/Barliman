tests-begin
testBeginShadowed
	| states |
	states := (BLMSchemeInterpreter new eval: #(begin #(quote 42)) asConsR env: (#val cons: #begin cons: five) cons out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 5