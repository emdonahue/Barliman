tests - synthesis
testSynthesizeNull
	self assert: (interpreter synthesize: #((() true) ((1) false) ((1 1) false))) equals: #(null _1) asConsR.