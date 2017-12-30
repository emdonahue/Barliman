tests-quote
testQuoteClosureAbsento
	self assert: (BLMSchemeInterpreter new eval: (#quote cons: BLMClosure tag cons cons) out: x) runner runAll isEmpty