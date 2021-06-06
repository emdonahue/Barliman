eval
evalBool: anExpr env: anEnv o: aVal
	^ self eval: anExpr env: anEnv o: aVal type: #(quote cons lambda list).