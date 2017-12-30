as yet unclassified
eval: anExpr
	| val |
	val := SKVar new.
	^ (interpreter eval: anExpr out: val) runner next => val