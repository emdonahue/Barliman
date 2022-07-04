tests-apply
testApplyMultiArg
	| states |
	states := (BLMSchemeInterpreter new eval: #((lambda #(x y) #(list y x)) (quote 42) (quote 51)) asConsR out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: (51 cons: 42 cons)