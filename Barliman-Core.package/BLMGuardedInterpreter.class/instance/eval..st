eval
eval: anExpr
	^ self eval: anExpr env: Cons empty.