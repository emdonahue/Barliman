primitives
car: anExpr env: anEnv o: aVal
	^ (anExpr car: #car listo: [ :l |
		[ :list |
			{ self evalPair: l env: anEnv o: list.
				list carCdro: [ :car :cdr |
					aVal === car ] } ] fresh ]) tag: #car.