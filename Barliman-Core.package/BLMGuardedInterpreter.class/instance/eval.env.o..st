eval
eval: anExpr env: anEnv o: aVal
	^ {self quote: anExpr o: aVal.
		self boolean: anExpr o: aVal.
		self null: anExpr env: anEnv o: aVal.
		self car: anExpr env: anEnv o: aVal.
		self cdr: anExpr env: anEnv o: aVal.
		self cons: anExpr env: anEnv o: aVal.
		self list: anExpr env: anEnv o: aVal.
		self if: anExpr env: anEnv o: aVal.
		self lookup: anExpr env: anEnv o: aVal.
		self lambda: anExpr env: anEnv o: aVal. 
		self apply: anExpr env: anEnv o: aVal. } conde.