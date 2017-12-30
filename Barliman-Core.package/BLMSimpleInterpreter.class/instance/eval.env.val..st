as yet unclassified
eval: anExpr env: anEnv val: aVal
	^ (super eval: anExpr env: anEnv val: aVal) | (self bool: anExpr env: anEnv val: aVal) | (self if: anExpr env: anEnv val: aVal)