eval
lambda: anExpr env: anEnv o: aVal
	
	^ anExpr match2: #(lambda _ | _) o: [ :args :body | 
		aVal === (#closure cons: anEnv cons: args cons: body cons) ].