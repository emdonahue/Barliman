eval
evalAll: anExpr
	^ [ :o | self eval: anExpr asConsR env: Cons empty o: o ] asGoal runList.