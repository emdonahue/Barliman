apply
applyPrimo: anExpr env: anEnv out: aVal
	| rator rands xs as primId |
	rator := SKVar new.
rands := SKVar new.
xs := SKVar new.
as := SKVar new.
primId := SKVar new.
	^ 
			{(rator cons: rands) === anExpr.
			(self eval: rator env: anEnv out: (BLMPrimitive tag cons: primId)).
			(self evalPrimo: primId args: as val: aVal).
			(self evalListo: rands env: anEnv out: as)} asGoal