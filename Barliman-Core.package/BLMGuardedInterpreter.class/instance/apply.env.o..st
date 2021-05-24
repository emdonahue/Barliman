eval
apply: anExpr env: anEnv o: aVal

	^ anExpr match2: #(_ | _) o: [ :rator :rands |
		{ rator =/= #quote. rator =/= #list. rator =/= #lambda.
		[ :args :env :body :ext :vals | 
			{ self eval: rator env: anEnv o: (#closure cons: env cons: args cons: body cons).
				self evalList: rands env: env o: vals.
				self extend: ext env: anEnv args: args vals: vals.
				"aVal === {body. ext}"
				self eval: body env: ext o: aVal } ] fresh } ].
	