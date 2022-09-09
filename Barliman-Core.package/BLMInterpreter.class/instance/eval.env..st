ui
eval: anExpr env: anEnv
	^ [ :o | self eval: (Cons read: anExpr) env: (Cons read: anEnv) o: o ] asGoal runList 
		ifEmpty: [ nil ] 
		ifNotEmpty: [ :r | r first first ].