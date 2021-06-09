ui
synthesizeAll: someExamples hint: aHint constants: someConstants
	^ (self synthesizeGoal: someExamples hint: aHint constants: someConstants) run collect: [ :a | a first ].