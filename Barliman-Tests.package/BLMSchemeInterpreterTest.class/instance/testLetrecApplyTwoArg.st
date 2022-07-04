tests-letrec
testLetrecApplyTwoArg
	| states |
	states := (BLMSchemeInterpreter new eval: #(letrec #(#(pair #(lambda #(x y) (cons x y)))) #(pair 42 51)) asConsR out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: (42 cons: 51)