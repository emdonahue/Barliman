tests-lambda
testLambdaArgSymbol
	self assert: (BLMSchemeInterpreter new eval: #(lambda #(42) x) asConsR out: x) runner runAll isEmpty