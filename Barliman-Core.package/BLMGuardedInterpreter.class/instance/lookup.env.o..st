eval
lookup: anExpr env: anEnv o: aVal 	
	^ { anExpr isSymbolo. 
		self walk: anExpr env: anEnv o: aVal }.