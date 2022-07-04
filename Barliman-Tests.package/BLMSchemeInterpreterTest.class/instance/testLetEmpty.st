tests-let
testLetEmpty
	| states |
	states := (BLMSchemeInterpreter new eval: #(let #() #(quote 5)) asConsR out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 5