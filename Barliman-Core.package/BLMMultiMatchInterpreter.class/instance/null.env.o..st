primitives
null: anExpr env: anEnv o: aVal
	^ ({{aVal === true. ({anExpr} match: #((null _)) o: [ :n | self evalPair: n env: anEnv o: Cons empty ]) tag: #null}.
		{aVal === false. ({anExpr} match: #((null _)) o: [ :n :null | 
			{null isPairo. self evalPair: n env: anEnv o: null }]) tag: #notnull}} conde).