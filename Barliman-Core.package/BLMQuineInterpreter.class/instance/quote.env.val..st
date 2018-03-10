as yet unclassified
quote: anExpr env: anEnv val: aVal
	^ anExpr car: #quote cdrIn: [ :quoted | "Quote" quoted === aVal cons & (aVal absento: BLMClosure tag) & (self not: #quote inEnvo: anEnv) ]