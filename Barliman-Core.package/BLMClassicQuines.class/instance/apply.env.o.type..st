eval
apply: anExpr env: anEnv o: aVal type: badTypes
	^ [ :rator :rands :args :env :body :vals :ext |
		{ anExpr === (#apply cons: rator cons: rands).
		"rator =/= #quote. rator =/= #list. rator =/= #lambda. rator =/= #cons. rator =/= #car. rator =/= #cdr. rator =/= #if. rator =/= #null. "
		self eval: rator env: anEnv o: (#closure cons: env cons: args cons: body cons).
		self argsEval: rands env: anEnv o: vals.
		"args isPairo. ""Possibly unneeded?"
		self extend: ext env: env args: args vals: vals.
		"aVal ==={body. ext}"
		self eval: body env: ext o: aVal type: badTypes
		} ] asGoal.