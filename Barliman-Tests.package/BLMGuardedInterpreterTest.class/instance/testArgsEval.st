tests - ground
testArgsEval
	self assert: [ :q | interpreter argsEval: #((quote ()) x) asConsR env: (Cons read: #((x . 1))) o: q ] asGoal runList first first equals: (Cons empty cons: 1 cons).