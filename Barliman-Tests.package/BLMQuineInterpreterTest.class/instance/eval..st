as yet unclassified
eval: anExpr
	^ (interpreter eval: anExpr env: x1y2 val: x) runner next peek => x