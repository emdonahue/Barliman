eval
apply: anExpr env: anEnv o: aVal type: badTypes
	^ [ :rator :rands :args :env :body :vals :ext |
		{ anExpr === (#apply cons: rator cons: rands).
		self evalLambda: rator env: anEnv o: (#closure cons: env cons: args cons: body cons).
		self argsEval: rands env: anEnv o: vals.
		self extend: ext env: env args: args vals: vals.
		self eval: body env: ext o: aVal type: badTypes
		} ] asGoal.