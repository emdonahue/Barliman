tests-letrec
testLetrecApply
	| states |
	states := (BLMSchemeInterpreter new eval: #(letrec #(#(fourtyTwo #(lambda #() 42))) (fourtyTwo)) asConsTree out: x) runner runAll.
	self assert: states size equals: 1.
	self
		assert: states first => x
		equals: 42