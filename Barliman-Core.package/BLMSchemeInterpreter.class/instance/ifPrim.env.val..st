primitives
ifPrim: anExpr env: anEnv val: aVal
	| if then else cond |
	if:=SKVar new.
then:=SKVar new.
else:=SKVar new.
cond:=SKVar new.

	^ 
	{(anExpr === (#if cons: if cons: then cons: else cons)).
	(self not: #if inEnvo: anEnv).
	(self eval: if env: anEnv out: cond).
	{{(cond =/= false).
	(self eval: then env: anEnv out: aVal)}.
	{(cond === false).
	(self eval: else env: anEnv out: aVal)}}} asGoal