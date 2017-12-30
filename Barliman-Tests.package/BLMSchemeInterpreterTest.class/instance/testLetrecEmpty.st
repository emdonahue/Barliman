tests-letrec
testLetrecEmpty
	| states |
	states := (BLMSchemeInterpreter new eval: #(letrec #() #(#quote 5)) asConsTree out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 5