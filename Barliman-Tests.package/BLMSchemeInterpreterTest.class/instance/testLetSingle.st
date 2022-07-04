tests-let
testLetSingle
	| states |
	states := (BLMSchemeInterpreter new eval: #(let #(#(x #(quote 42))) x) asConsR out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 42