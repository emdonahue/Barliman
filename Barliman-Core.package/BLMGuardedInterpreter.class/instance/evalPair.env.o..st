eval
evalPair: anExpr env: anEnv o: aVal
	^ {self car: anExpr env: anEnv o: aVal.
		self cdr: anExpr env: anEnv o: aVal.
		self if: anExpr env: anEnv o: aVal.
		self lookup: anExpr env: anEnv o: aVal.
		self apply: anExpr env: anEnv o: aVal. } conde.