eval
evalCdr: primId args: someArgs val: aVal
	| a |
	a := SKVar new.
	^ {(primId === #cdr).
	(someArgs === (a cons: aVal) cons).
	(a =/= BLMClosure tag).
	(a =/= BLMPrimitive tag)} asGoal