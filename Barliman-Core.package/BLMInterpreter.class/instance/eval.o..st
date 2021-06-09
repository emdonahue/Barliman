ui
eval: anExpr o: aVal
	^ self eval: anExpr env: Cons empty o: aVal.