tests-lambda
testLambdaDuplicateArg
	self assert: (BLMSchemeInterpreter new eval: #(lambda #(x x) #x) asConsR out: x) runner runAll isEmpty.
	self assert: (BLMSchemeInterpreter new eval: #(lambda #(x y x) #x) asConsR out: x) runner runAll isEmpty.
	self assert: (BLMSchemeInterpreter new eval: #(lambda #(x y z y) #x) asConsR out: x) runner runAll isEmpty.