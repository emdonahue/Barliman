letrec
letrec: anExpr env: anEnv val: aVal
	| bindings body |
	bindings := SKVar new.
	body := SKVar new.
	^ {(anExpr === (#letrec cons: bindings cons: body cons)).
	(self not: #letrec inEnvo: anEnv).
	(self
		letrecBindings: bindings
		recBindings: Cons empty
		body: body
		env: anEnv
		val: aVal)}  asGoal