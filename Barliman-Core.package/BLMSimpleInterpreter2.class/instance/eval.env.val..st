as yet unclassified
eval: anExpr env: anEnv val: aVal
	^ (super eval: anExpr env: anEnv val: aVal) | (self car: anExpr env: anEnv val: aVal)
