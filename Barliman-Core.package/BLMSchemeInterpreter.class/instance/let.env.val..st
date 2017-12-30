let
let: anExpr env: anEnv val: aVal
	| bindings body |
	bindings := SKVar new.
	body := SKVar new.
	^ 
	{(anExpr === (#let cons: bindings cons: body cons)).
	(self not: #let inEnvo: anEnv).
	(self
		letLoop: bindings
		identifiers: Cons empty
		expressions: Cons empty
		body: body
		env: anEnv
		val: aVal)} asGoal