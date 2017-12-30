lookup
lookupRec: aVar bindings: theBindings env: anEnv val: aVal rest: theRest
	^  {{theBindings isEmptyo.
	(self lookup: aVar env: theRest out: aVal)}.
	[ :rest :pname :lamExpr | 
	{(theBindings === ((pname cons: lamExpr) cons: rest)).
	{{(aVar === pname).
	((BLMClosure tag cons: lamExpr cons: anEnv cons) === aVal)}.
	{(pname =/= aVar).
	(self
		lookupRec: aVar
		bindings: rest
		env: anEnv
		val: aVal
		rest: theRest)}} asConde} ]} asConde 