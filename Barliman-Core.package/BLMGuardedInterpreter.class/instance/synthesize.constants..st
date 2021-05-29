ui
synthesize: someExamples constants: someConstants
	^ (self synthesizeAll: someExamples constants: someConstants) ifEmpty: nil ifNotEmpty: [ :r | r first ].