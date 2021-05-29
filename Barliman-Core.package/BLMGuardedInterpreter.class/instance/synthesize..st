ui
synthesize: someExamples
	^ (self synthesizeAll: someExamples) ifEmpty: nil ifNotEmpty: [ :r | r first ].