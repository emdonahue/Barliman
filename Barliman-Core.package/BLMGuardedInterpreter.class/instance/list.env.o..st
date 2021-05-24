eval
list: anExpr env: anEnv o: aVal 
	^ anExpr match2: #(list | _) o: [ :list | self properList: list env: anEnv o: aVal ].