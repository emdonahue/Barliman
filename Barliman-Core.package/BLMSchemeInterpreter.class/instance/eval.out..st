eval
eval: aProgram out: anOutput
	^ self eval: aProgram asConsTree env: initialEnvironment out: anOutput