tests - synthesis
testSynthesizeNull
	self assert: (interpreter synthesize: #(((list) true) ((list (quote 1)) false) ((list (quote 1) (quote 1)) false))) equals: #null.