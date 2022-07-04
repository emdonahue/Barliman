tests-letrec
testLetrecApplyOneArg
	| states |
	states := (BLMSchemeInterpreter new eval: #(letrec #(#(identity #(lambda #(x) x))) #(identity (#quote 42))) asConsR out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 42