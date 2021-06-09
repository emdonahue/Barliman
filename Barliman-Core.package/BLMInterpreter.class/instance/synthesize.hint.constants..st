ui
synthesize: someExamples hint: aHint constants: someConstants
	^ (self synthesizeAll: someExamples hint: aHint constants: someConstants) ifEmpty: nil ifNotEmpty: [ :r | r first ].