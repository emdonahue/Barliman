primitives
car: anExpr env: anEnv o: aVal
	^ [ :e :cdr |
		{anExpr === (#car cons: e cons).
			self evalPair: e env: anEnv o: (aVal cons: cdr). }] asGoal tag: #car.