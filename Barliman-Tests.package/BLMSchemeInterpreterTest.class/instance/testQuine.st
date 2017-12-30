tests-synthesis
testQuine
	self deny: (BLMSchemeInterpreter new eval: x out: x) runner next atEnd