as yet unclassified
quote: aRator expr: anExpr env: anEnv val: aVal
	^ aRator === #quote & (anExpr === aVal cons) & (aVal absento: BLMClosure tag) & (self not: #quote inEnvo: anEnv)