tests-apply
testApplyIdentity
	| states |
	states := (BLMSchemeInterpreter new eval: #(#(lambda #(x) x) #(quote 42)) asConsTree out: x) runner runAll.
	self assert: states size equals: 1.
		self assert: states first => x equals: 42.