tests - synthesis
testSynthesizeCons
	self assert: (interpreter synthesize: #((1 2 (1 . 2)) (1 (2) (1 2))) constants: #(1)) equals: #(cons _1 _2) asConsTree.