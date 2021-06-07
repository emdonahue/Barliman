primitives
car: anExpr env: anEnv o: aVal
	^ (anExpr car: #car list: 1 o: [ :l :list |
			{ self evalPair: l env: anEnv o: list.
				list carCdro: [ :car :cdr |
					aVal === car ] } ]) tag: #car.