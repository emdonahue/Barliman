tests - lambdasynthesis
testSynthesizeDoubleLambda
	
	self assert: (interpreter synthesizeLambda: #(((quote 1) (1 . 1))) hint: SKVar new constants: #(1)) first equals: #lambda. 
