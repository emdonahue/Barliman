tests-apply
testApplyEmpty
	| states |
	states := (BLMSchemeInterpreter new eval: #(empty #(list #(list))) asConsR env: (#val cons: (#empty cons: empty)) cons out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: Cons empty