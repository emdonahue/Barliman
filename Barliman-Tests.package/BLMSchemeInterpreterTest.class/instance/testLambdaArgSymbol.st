tests-lambda
testLambdaArgSymbol
	self assert: (BLMSchemeInterpreter new eval: #(lambda #(42) x) asConsTree out: x) runner runAll isEmpty