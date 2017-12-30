tests-list
testListClosureAbsento
	self assert: (BLMSchemeInterpreter new eval: {#list. BLMClosure tag} asConsTree env: (BLMClosure tag cons: 42) cons out: x) runner runAll isEmpty