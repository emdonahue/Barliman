tests-lambda
testLambdaShadowed
	self assert: (BLMSchemeInterpreter new eval: #(lambda #(x) x) asConsR env: (#val cons: (#lambda cons: 42) cons) out: x) runner runAll isEmpty