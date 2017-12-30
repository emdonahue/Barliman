eval
evalCons: primId args: someArgs val: aVal
	| a d |
	a := SKVar new.
	d := SKVar new.
	^ {(primId === #cons).

	(someArgs === (a cons: d cons)).
	(aVal === (a cons: d)).
	(a =/= BLMClosure tag).
	(a =/= BLMPrimitive tag)} asGoal