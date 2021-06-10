primitives
quote: anExpr o: aVal
	^ {aVal absento: #closure.
		anExpr === (#quote cons: aVal cons)} fresh.