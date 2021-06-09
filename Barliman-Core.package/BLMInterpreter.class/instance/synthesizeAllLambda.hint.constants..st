ui
synthesizeAllLambda: someExamples hint: aHint constants: someConstants
	^ (self synthesizeLambdaGoal: someExamples hint: aHint constants: someConstants) run collect: [ :a | a first ].