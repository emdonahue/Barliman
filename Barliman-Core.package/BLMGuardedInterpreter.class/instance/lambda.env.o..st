eval
lambda: anExpr env: anEnv o: aVal
	
	^ anExpr match2: #(lambda | _) o: [ :args_body | "Lambda"
		aVal === (#closure cons: anEnv cons: args_body) ].