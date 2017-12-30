tests-lookup
testLookupZ
	self assert: (BLMSchemeInterpreter new eval: #z env: x1y2 out: x) runner runAll isEmpty.
	