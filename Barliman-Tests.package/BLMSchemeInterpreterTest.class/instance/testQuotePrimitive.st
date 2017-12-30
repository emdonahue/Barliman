tests-quote
testQuotePrimitive
	self assert: (BLMSchemeInterpreter new eval: (#quote cons: BLMPrimitive tag cons) out: x) runner runAll isEmpty