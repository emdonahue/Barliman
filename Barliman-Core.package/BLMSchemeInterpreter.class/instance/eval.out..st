eval
eval: aProgram out: anOutput
	^ self eval: aProgram asConsR env: initialEnvironment out: anOutput