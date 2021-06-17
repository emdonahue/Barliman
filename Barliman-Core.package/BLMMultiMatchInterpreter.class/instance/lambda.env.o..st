eval
lambda: anExpr env: anEnv o: aVal
	^ ({aVal. anExpr} match: #((closure _ . _1) (lambda . _1)) o: [ :env :args_body |
			env === anEnv]) tag: #lambda.