tests-primitive
testNotNull
	| states |
	states := (BLMSchemeInterpreter new
		eval:
			{'null?' asSymbol.
			#(quote #(42))} asConsR
		out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: false