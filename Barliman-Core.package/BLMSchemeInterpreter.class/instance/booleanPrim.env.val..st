primitives
booleanPrim: anExpr env: anEnv val: aVal
	^ ((anExpr === true) &
	(aVal === true)) | 
	((anExpr === false) &
	(aVal === false))