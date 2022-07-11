lookup
lookupRec: aVar bindings: theBindings env: anEnv val: aVal rest: theRest
	^  {{theBindings isEmptyo.
	(self lookup: aVar env: theRest out: aVal)}.
	[ :rest :pname :lamExpr | 
	{(theBindings === ((pname cons: lamExpr) cons: rest)).
	{{(aVar === pname).
	"If we find the lambda, create a closure that swaps in the current env appropriate to the binding."
	((BLMClosure tag cons: lamExpr cons: anEnv cons) === aVal)}.
	{(pname =/= aVar).
	(self
		lookupRec: aVar
		bindings: rest
		env: anEnv
		val: aVal
		rest: theRest)}} asGoal} ]} asGoal 