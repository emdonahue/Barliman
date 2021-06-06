primitives
null: anExpr env: anEnv o: aVal
	^ ({{aVal === true. anExpr match2: #(null _) o: [ :n | self evalPair: n env: anEnv o: Cons empty ]}.
		{aVal === false. anExpr match2: #(null _) o: [ :n :null | 
			{null isPairo. self evalPair: n env: anEnv o: null }]}} conde) tag: #null.