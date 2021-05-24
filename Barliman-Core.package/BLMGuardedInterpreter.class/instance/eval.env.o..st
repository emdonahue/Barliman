eval
eval: anExpr env: anEnv o: aVal
	^ {self quote: anExpr o: aVal.
		self list: anExpr env: anEnv o: aVal.
		self lookup: anExpr env: anEnv o: aVal.
		self lambda: anExpr env: anEnv o: aVal. 
		self apply: anExpr env: anEnv o: aVal. } conde.