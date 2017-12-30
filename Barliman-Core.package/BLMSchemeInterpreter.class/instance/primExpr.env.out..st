primitives
primExpr: anExpr env: anEnv out: aVal
	^ (self booleanPrim: anExpr env: anEnv val: aVal) |
	(self ifPrim: anExpr env: anEnv val: aVal)