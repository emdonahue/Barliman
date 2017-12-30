tests-let
testLetShadowed
	| states |
	states := (BLMSchemeInterpreter new eval: #(let #(quote 42)) asConsTree env: (#val cons: #let cons: five) cons out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 5