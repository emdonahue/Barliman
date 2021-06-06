eval
list: anExpr env: anEnv o: aVal 
	^ [ :list | "List" {anExpr === (#list cons: list). self properList: list env: anEnv o: aVal} ] asGoal.