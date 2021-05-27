tests - synthesis
testSynthenizeNot
	self skip.
	(interpreter synthesize: #((false true) (true false))) inspect.