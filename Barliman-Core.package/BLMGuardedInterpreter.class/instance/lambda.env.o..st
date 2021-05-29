eval
lambda: anExpr env: anEnv o: aVal
	^ aVal match2: #(closure _ | _) o: [ :env :args_body | "Lambda"
			{ env === anEnv. anExpr === (#lambda cons: args_body) }].