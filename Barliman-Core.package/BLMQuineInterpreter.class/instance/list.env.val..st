list
list: anExpr env: anEnv val: aVal
	^ anExpr
		car: #list
		cdrIn: [ :listExpr | "List" (self not: #list inEnvo: anEnv) & (listExpr absento: BLMClosure tag) & (self properList: listExpr env: anEnv val: aVal) ]