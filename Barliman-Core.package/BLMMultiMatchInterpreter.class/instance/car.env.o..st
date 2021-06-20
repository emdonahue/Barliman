primitives
car: anExpr env: anEnv o: aVal	
	^ ({anExpr} match: #((car _)) o: [ :carlist :tmpcdr |
				self evalPair: carlist env: anEnv o: (aVal cons: tmpcdr) ]) tag: #car.  