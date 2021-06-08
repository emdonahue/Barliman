primitives
null: anExpr env: anEnv o: aVal
	^	[ :n :null |
		{anExpr === (#null cons: n cons).
			{{aVal === true. self evalPair: n env: anEnv o: Cons empty.}.
			{aVal === false. null isPairo. self evalPair: n env: anEnv o: null}} conde}] asGoal tag: #null.