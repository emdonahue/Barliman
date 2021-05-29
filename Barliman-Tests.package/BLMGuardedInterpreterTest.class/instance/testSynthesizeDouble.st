tests - synthesis
testSynthesizeDouble
	
	self assert: (interpreter synthesize: #( ((quote 1) (1 . 1)) ) constants: #(1)) asString equals: '(#lambda (isSymbol) (#cons isSymbol isSymbol))'.
