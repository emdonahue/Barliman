primitives
apply: anExpr env: anEnv o: aVal type: badTypes
		^ (anExpr match: #(apply _ | _) o: [ :rator :rands :closure |
			{(closure car: #closure list: 3 o: [ :env :args :body :vals :ext | 
				{self eval: body env: ext o: aVal type: badTypes. 
					self extend: ext env: env args: args vals: vals.
					self argsEval: rands env: anEnv o: vals. } ]) tag: #apply_closure.
			self evalLambda: rator env: anEnv o: closure. } ]) tag: #apply.
	
