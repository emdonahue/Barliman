primitives
apply: anExpr env: anEnv o: aVal type: badTypes

"ABBench a: ["
	^ (anExpr match2: #(apply _ | _) o: [ :rator :rands :closure |
		{(closure match2: #(closure _ _ _) o: [ :env :args :body | 
				[:vals | 
					{ self argsEval: rands env: anEnv o: vals.
					[ :ext | 
						{self extend: ext env: env args: args vals: vals.
						self eval: body env: ext o: aVal type: badTypes } ] fresh tag: #apply_extend } ] fresh tag: #apply_args ]) tag: #apply_closure.
			self evalLambda: rator env: anEnv o: closure. } ]) tag: #apply.
		"] b: [
	^ (anExpr match2: #(apply _ | _) o: [ :rator :rands :ext :vals :closure :body |		
			{self eval: body env: ext o: aVal type: badTypes.
			(closure match2: #(closure _ _ _) o: [ :env :args :lambody |
				{body===lambody. 
					self extend: ext env: env args: args vals: vals.
					self argsEval: rands env: anEnv o: vals.}
				]).		
			self evalLambda: rator env: anEnv o: closure.	
				}
		 ]) tag: #apply.
	
	]"
	
