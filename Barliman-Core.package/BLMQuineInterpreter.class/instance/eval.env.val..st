as yet unclassified
eval: anExpr env: anEnv val: aVal
	^ (self lookup: anExpr env: anEnv val: aVal) | (self apply: anExpr env: anEnv val: aVal) | (self quote: anExpr env: anEnv val: aVal)
		| (self list: anExpr env: anEnv val: aVal) | (self lambda: anExpr env: anEnv val: aVal)
