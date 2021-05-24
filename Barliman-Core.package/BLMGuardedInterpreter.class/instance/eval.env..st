eval
eval: anExpr env: anEnv
	^ [ :o | self eval: anExpr asConsTree env: anEnv o: o ] asGoal run 
		ifEmpty: [ nil ] 
		ifNotEmpty: [ :r | r first first ].