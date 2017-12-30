apply
apply: anExpr env: anEnv out: aVal
	| x body env a extEnv rator rands |
	rator := SKVar new.
	rands := SKVar new.
	x := SKVar new.
	body := SKVar new.
	env := SKVar new.
	a := SKVar new.
	extEnv := SKVar new.
	^ 
	
			{(rator cons: rands) === anExpr.
			(self eval: rator env: anEnv out: (BLMClosure tag cons: (#lambda cons: x cons: body cons) cons: env cons)).
			(self evalListo: rands env: anEnv out: a).
			(self
				extend: extEnv
				env: env
				args: x
				vals: a).
			(self eval: body env: extEnv out: aVal)} asGoal