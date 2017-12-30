as yet unclassified
lambda: aRator expr: anExpr env: anEnv val: aVal
	^ aRator === #lambda & (self not: #lambda inEnvo: anEnv) & (anExpr carCdrIn: [ :args :body | aVal === (BLMClosure tag cons: args cons: anEnv cons: body) ])