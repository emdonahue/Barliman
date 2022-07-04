tests-apply
testEvalListo
	self assert: (BLMSchemeInterpreter new evalListo: Cons empty env: Cons empty out: x) runner runAll first => x equals: Cons empty.
	self
		assert: (BLMSchemeInterpreter new evalListo: #(#(quote 42) #(quote 51)) asConsR env: Cons empty out: x) runner runAll first => x
		equals: (42 cons: 51 cons)