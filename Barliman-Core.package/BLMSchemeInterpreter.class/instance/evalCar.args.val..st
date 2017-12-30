eval
evalCar: primId args: someArgs val: aVal
	| d |
	d := SKVar new.
	^ {(primId === #car).
	(someArgs === (aVal cons: d) cons).
	(aVal =/= BLMClosure tag).
	(aVal =/= BLMPrimitive tag) } asGoal