eval
apply: anExpr env: anEnv o: aVal

"ABBench a: ["
	^ anExpr match2: #(_ | _) o: [ :rator :rands |
		{ rator =/= #quote. rator =/= #list. rator =/= #lambda. rator =/= #cons. rator =/= #car. rator =/= #cdr. rator =/= #if. rator =/= #null. 
		[ :args :env :body | "Apply - Operator"
			{ self eval: rator env: anEnv o: (#closure cons: env cons: args cons: body cons).
				[:vals | "Apply - Operands"
					{ self evalList: rands env: anEnv o: vals.
					[ :ext | "Apply - Eval"
						{self extend: ext env: env args: args vals: vals.
						self eval: body env: ext o: aVal } ] fresh } ] fresh } ] fresh } ].
	"] b: [
	^ anExpr match2: #(_ | _) o: [ :rator :rands :closure |
		{ rator =/= #quote. rator =/= #list. rator =/= #lambda. rator =/= #cons. rator =/= #car. rator =/= #cdr. rator =/= #if. rator =/= #null. 
		closure match2: #(closure _ _ _) o: [ :env :args :body | 
				[:vals | 
					{ self evalList: rands env: anEnv o: vals.
					[ :ext | 
						{self extend: ext env: env args: args vals: vals.
						self eval: body env: ext o: aVal } ] fresh } ] fresh ].
			self eval: rator env: anEnv o: closure. } ].
		
	]"