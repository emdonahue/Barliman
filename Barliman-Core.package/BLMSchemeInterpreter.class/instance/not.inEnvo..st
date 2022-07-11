parameters
not: primSym inEnvo: anEnv
	^ {anEnv isEmptyo.
	( [ :shadowedSym :val :rest | 
			{(((#val cons: (shadowedSym cons: val)) cons: rest) === anEnv).
			(shadowedSym =/= primSym).
			(self not: primSym inEnvo: rest)} ]).
	[ :bindings :rest | 
	{(anEnv === ((#rec cons: bindings) cons: rest)).
	(self not: primSym inRecEnvo: rest bindings: bindings)} ]} asGoal