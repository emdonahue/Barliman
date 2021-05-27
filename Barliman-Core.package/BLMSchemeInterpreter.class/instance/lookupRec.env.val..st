lookup
lookupRec: aVar env: anEnv val: aVal
	"Rec bindings are all stored under a single environment term tagged with #rec, so find that then unpack the bindings. There may be multiple such terms from multiple letrecs."
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