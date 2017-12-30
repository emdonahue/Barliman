tests-notinenv
testNotInEnvo
	| interp |
	interp := BLMSchemeInterpreter new.
	self assert: (interp not: #quote inEnvo: interp initialEnvironment) runner runAll size equals: 1.
	self assert: (interp not: #car inEnvo: interp initialEnvironment) runner runAll isEmpty.
	