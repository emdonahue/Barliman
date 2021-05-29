tests - synthesis
testSynthesizeNot
	self skip.
	(interpreter synthesize: #((false true) (true false))) inspect.