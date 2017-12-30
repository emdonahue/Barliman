list
list: aRator expr: anExpr env: anEnv val: aVal
	^ aRator === #list & (self not: #list inEnvo: anEnv) & (anExpr absento: BLMClosure tag) & (self properList: anExpr env: anEnv val: aVal)