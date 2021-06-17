tests - ground
testArgsEval
	self assert: [ :q | interpreter argsEval: #((quote ()) x) asConsTree env: (Cons read: #((x . 1))) o: q ] asGoal run first first equals: (Cons empty cons: 1 cons).