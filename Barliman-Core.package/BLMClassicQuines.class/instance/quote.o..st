as yet unclassified
quote: anExpr o: aVal
	^ {aVal absento: #closure.
		anExpr === (#quote cons: aVal cons)} asGoal.