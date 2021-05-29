ui
synthesize: someExamples hint: aHint
	^ (self synthesizeAll: someExamples hint: aHint) ifEmpty: nil ifNotEmpty: [ :r | r first ].