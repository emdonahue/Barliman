as yet unclassified
quote: anExpr env: anEnv val: aVal
	^ anExpr car: #quote cdro: [ :quoted | "Quote" quoted === aVal cons & (aVal absento: BLMClosure tag) & (self not: #quote inEnvo: anEnv) ]