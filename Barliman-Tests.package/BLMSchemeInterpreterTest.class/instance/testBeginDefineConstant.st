tests-begin
testBeginDefineConstant
	| states |
	states := (BLMSchemeInterpreter new eval: #(begin #(define fourtyTwo #(lambda #() 42)) #(fourtyTwo)) out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 42