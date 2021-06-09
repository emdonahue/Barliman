ui
synthesizeLambda: someExamples hint: aHint constants: someConstants
	^ (self synthesizeAllLambda: someExamples hint: aHint constants: someConstants) 
		ifEmpty: nil
		ifNotEmpty:[ :s | s first ].