primitives
cdr: anExpr env: anEnv o: aVal
	^ [ :e :car |
		{anExpr === (#cdr cons: e cons).
			self evalPair: e env: anEnv o: (car cons: aVal). }] asGoal tag: #cdr.