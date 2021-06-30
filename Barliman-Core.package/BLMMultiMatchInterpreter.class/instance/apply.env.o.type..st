eval
apply: anExpr env: anEnv o: aVal type: badTypes
	"ABBench a: [
	^ ({anExpr} match: #((apply _ . _)) o: [ :rator :rands :closure |
		{({closure} match: #((closure _ _ _)) o: [ :env :args :body :vals :ext | 
			{self eval: body env: ext o: aVal type: badTypes. 
				self extend: ext 
					env: ((#loop cons: (#closure cons: env cons: args cons: body cons)) cons: env) 
					args: args vals: vals.					
				self argsEval: rands env: anEnv o: vals. } ]) tag: #apply_closure.
		self evalLambda: rator env: anEnv o: closure. } ]) tag: #apply.
	] b: ["
	^ (anExpr match: #(apply _ . _) o: [ :rator :rands :closure |
		{(closure car: #closure list: 3 o: [ :env :args :body :vals :ext | 
			[{args isPairo.
				self eval: body env: ext o: aVal type: badTypes. 
				self extend: ext 
					env: ((#loop cons: (#closure cons: env cons: args cons: body cons)) cons: env) 
					args: args vals: vals.					
				self argsEval: rands env: anEnv o: vals. }] fresh]) tag: #apply_closure.
		self evalLambda: rator env: anEnv o: closure. } ]) tag: #apply.
	"^ ({anExpr} match: #((apply _ . _)) o: [ :rator :rands :closure :env :args :body :vals :ext | 
		[[{args isPairo.
			self evalLambda: rator env: anEnv o: (#closure cons: env cons: args cons: body cons).
			self eval: body env: ((#loop cons: (#closure cons: env cons: args cons: body cons)) cons: ext) o: aVal type: badTypes. 
			self extend: ext 
				env: env 
				args: args vals: vals.					
			self argsEval: rands env: anEnv o: vals. }] fresh ] fresh ]) tag: #apply.
	]" 