tests-list
testListShadowed
	| states |
	states := (BLMSchemeInterpreter new eval: #(list #(quote 42)) asConsR env: (#val cons: #list cons: five) cons out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 5