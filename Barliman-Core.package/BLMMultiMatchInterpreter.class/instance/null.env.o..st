primitives
null: anExpr env: anEnv o: aVal
	^ ({{aVal === true. (anExpr car: #null listo: [ :n | self evalPair: n env: anEnv o: Cons empty ]) tag: #null}.
		{aVal === false. (anExpr car: #null list: 1 o: [ :n :null | 
			{null isPairo. self evalPair: n env: anEnv o: null }]) tag: #notnull}} conde).