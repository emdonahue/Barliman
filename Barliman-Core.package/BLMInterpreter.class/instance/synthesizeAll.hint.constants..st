ui
synthesizeAll: someExamples hint: aHint constants: someConstants
	^ (self synthesizeGoal: someExamples hint: aHint constants: someConstants) runList collect: [ :a | a first ].