tests - synthesis
testSynthesizeNot
	self skip.
	self assert: (interpreter synthesize: #((false true) (true false))) equals: #(if _1 (quote false) (quote true)) asConsR.