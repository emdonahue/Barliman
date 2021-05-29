tests - synthesis
testSynthesizeAnd
	self skip.
	(interpreter synthesize: #((true true true) (true false false) (false true false) (false false false))) inspect.