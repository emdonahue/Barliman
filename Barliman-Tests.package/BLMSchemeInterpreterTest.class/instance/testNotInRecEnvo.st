tests-notinenv
testNotInRecEnvo
	| interp |
	interp := BLMSchemeInterpreter new.
	self assert: (interp not: #car inEnvo: recEnv) runner runAll isEmpty.
	self assert: (interp not: #quote inEnvo: recEnv) runner runAll size equals: 1.
	self assert: (interp not: #fourtyTwo inEnvo: recEnv) runner runAll isEmpty.
	self assert: (interp not: #fiftyOne inEnvo: recEnv) runner runAll isEmpty.
	self assert: (interp not: #sixty inEnvo: recEnv) runner runAll isEmpty.