tests-lambda
testLambdaFive
	| states |
	states := (BLMSchemeInterpreter new eval: #(lambda #(x) #(quote 5)) asConsR out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: five