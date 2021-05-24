eval
apply: anExpr env: anEnv o: aVal

	^ anExpr match2: #(_ | _) o: [ :rator :rands |
		{ rator =/= #quote. rator =/= #list. rator =/= #lambda.
		[ :args :env :body :ext | 
			{ self eval: rator env: anEnv o: (#closure cons: env cons: args cons: body cons).
				self extend: ext env: anEnv args: args vals: rands.
				aVal === (ext cons: args cons: body cons)} ] fresh } ].
	