primitives
list: anExpr env: anEnv o: aVal 
	<todo> "constraint aVal to be a pair"
	^ (anExpr car: #list cdro: [ :list | "List" self properList: list env: anEnv o: aVal ]) tag: #list.