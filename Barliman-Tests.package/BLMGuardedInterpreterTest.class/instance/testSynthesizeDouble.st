tests - synthesis
testSynthesizeDouble
	
	self assert: (interpreter synthesize: #((1 (1 . 1))) constants: #(1)) equals: #(cons _1 _1) asConsR.
