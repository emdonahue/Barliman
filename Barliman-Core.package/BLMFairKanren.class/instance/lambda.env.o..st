eval
lambda: anExpr env: anEnv o: aVal
	^ [ :args_body |
		{aVal === (#closure cons: anEnv cons: args_body).
		anExpr === (#lambda cons: args_body) }] fresh.