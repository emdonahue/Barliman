eval
null: anExpr env: anEnv o: aVal
	^ {{aVal === true. anExpr match2: #(null _) o: [ :n | self eval: n env: anEnv o: Cons empty ]}.
		{aVal === false. anExpr match2: #(null _) o: [ :n :null | 
			{null =/= Cons empty. self eval: n env: anEnv o: null }]}} conde.