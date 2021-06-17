primitives
quote: anExpr o: aValue
	^ { anExpr === (#quote cons: aValue cons). aValue absento: #closure } asGoal.