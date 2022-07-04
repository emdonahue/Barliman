tests-primitive
testNull
	| states |
	states := (BLMSchemeInterpreter new
		eval:
			{'null?' asSymbol.
			#(quote #())} asConsR
		out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: true