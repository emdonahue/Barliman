tests-let
testLetNotShadowing
	| states |
	states := (BLMSchemeInterpreter new eval: #(let #(#(x #(quote 42))) y) asConsR env: x1y2 out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 2