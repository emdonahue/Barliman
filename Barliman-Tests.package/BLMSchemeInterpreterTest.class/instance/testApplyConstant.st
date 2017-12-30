tests-apply
testApplyConstant
	| states |
	states := (BLMSchemeInterpreter new eval: #(#(lambda #(x) #(quote 42)) #(quote 51)) asConsTree out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 42