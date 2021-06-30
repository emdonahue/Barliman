primitives
car: anExpr env: anEnv o: aVal	
	^ (anExpr car: #car list: 1 o: [ :carlist :tmpcdr |
		self evalPair: carlist env: anEnv o: (aVal cons: tmpcdr) ]) tag: #car.  