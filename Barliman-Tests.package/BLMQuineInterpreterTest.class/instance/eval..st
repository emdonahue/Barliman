running
eval: anExpr
	^ (interpreter eval: anExpr env: x1y2 val: x) runtime next peek => x