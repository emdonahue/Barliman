lookup
lookup: anExpr env: anEnv val: aVal
	^ anExpr isSymbolo & (self walk: anExpr env: anEnv val: aVal)