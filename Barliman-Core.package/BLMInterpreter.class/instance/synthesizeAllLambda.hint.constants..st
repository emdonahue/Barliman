ui
synthesizeAllLambda: someExamples hint: aHint constants: someConstants
	^ (self synthesizeLambdaGoal: someExamples hint: aHint constants: someConstants) runList collect: [ :a | a first ].