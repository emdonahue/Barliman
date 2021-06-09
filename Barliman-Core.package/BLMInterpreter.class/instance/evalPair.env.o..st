eval
evalPair: anExpr env: anEnv o: aVal
	^ self eval: anExpr env: anEnv o: aVal type: #(quote null cons lambda).