lookup
lookupRec: aVar env: anEnv val: aVal
	| bindings rest |
	bindings := SKVar new.
	rest := SKVar new.
	^ {(anEnv === ((#rec cons: bindings) cons: rest)).
	(self
		lookupRec: aVar
		bindings: bindings
		env: anEnv
		val: aVal
		rest: rest)} asGoal