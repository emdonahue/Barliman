running
eval: anExpr
	^ (interpreter eval: anExpr env: x1y2 val: x) runtime  peek => x