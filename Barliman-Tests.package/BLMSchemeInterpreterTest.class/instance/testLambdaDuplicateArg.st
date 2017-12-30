tests-lambda
testLambdaDuplicateArg
	self assert: (BLMSchemeInterpreter new eval: #(lambda #(x x) #x) asConsTree out: x) runner runAll isEmpty.
	self assert: (BLMSchemeInterpreter new eval: #(lambda #(x y x) #x) asConsTree out: x) runner runAll isEmpty.
	self assert: (BLMSchemeInterpreter new eval: #(lambda #(x y z y) #x) asConsTree out: x) runner runAll isEmpty.