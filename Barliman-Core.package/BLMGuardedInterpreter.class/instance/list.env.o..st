primitives
list: anExpr env: anEnv o: aVal 
	^ (anExpr car: #list cdro: [ :list | "List" self properList: list env: anEnv o: aVal ]) tag: #list.