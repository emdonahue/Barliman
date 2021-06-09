eval
evalAll: anExpr
	^ [ :o | self eval: anExpr asConsTree env: Cons empty o: o ] asGoal run.