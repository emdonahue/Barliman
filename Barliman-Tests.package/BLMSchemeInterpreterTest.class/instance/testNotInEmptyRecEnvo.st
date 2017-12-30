tests-notinenv
testNotInEmptyRecEnvo
	| interp emptyRecEnv |
	interp := BLMSchemeInterpreter new.
	emptyRecEnv := (#rec cons: Cons empty) cons: interp initialEnvironment.
	self assert: (interp not: #car inEnvo: emptyRecEnv) runner runAll isEmpty.
	self assert: (interp not: #quote inEnvo: emptyRecEnv) runner runAll size equals: 1