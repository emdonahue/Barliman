tests-quote
testQuoteClosure
	self assert: (BLMSchemeInterpreter new eval: (#quote cons: BLMClosure tag cons) out: x) runner runAll isEmpty