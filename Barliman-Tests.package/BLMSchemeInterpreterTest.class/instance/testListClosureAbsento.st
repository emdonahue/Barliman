tests-list
testListClosureAbsento
	self assert: (BLMSchemeInterpreter new eval: {#list. BLMClosure tag} asConsR env: (BLMClosure tag cons: 42) cons out: x) runner runAll isEmpty