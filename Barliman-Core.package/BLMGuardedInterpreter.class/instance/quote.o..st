primitives
quote: anExpr o: aValue
	^ {aValue absento: #closure. "aValue =/= true. aValue =/= false." anExpr === (#quote cons: aValue cons)} asGoal.