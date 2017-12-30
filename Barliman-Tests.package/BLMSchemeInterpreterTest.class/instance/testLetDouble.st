tests-let
testLetDouble
	| states |
	states := (BLMSchemeInterpreter new eval: #(let #(#(x #(quote 42)) #(y #(quote 51))) #(cons x y)) asConsTree  out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: (42 cons: 51)