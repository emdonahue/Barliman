eval
evalListo: anExpr env: anEnv out: aVal
	^ (anExpr isEmptyo & aVal isEmptyo) | 
	[ :a :d :va :vd | 
	{(anExpr caro: a cdro: d).
	(aVal caro: va cdro: vd).
	(self eval: a env: anEnv out: va).
	(self evalListo: d env: anEnv out: vd)} ] 