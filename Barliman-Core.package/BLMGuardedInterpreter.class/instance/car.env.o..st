primitives
car: anExpr env: anEnv o: aVal	
	^ (anExpr car: #car list: 1 o: [ :l :list |
			{ list car: aVal cdro: [ :cdr | true ].
			self evalPair: l env: anEnv o: list } ]) tag: #car.  