eval
lambda: anExpr env: anEnv o: aVal
	
	^ anExpr match2: #(lambda _ _) o: [ :args :body | "Lambda"
		aVal === (#closure cons: anEnv cons: args cons: body cons) ].