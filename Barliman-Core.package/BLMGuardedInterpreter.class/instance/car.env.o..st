primitives
car: anExpr env: anEnv o: aVal
	^ (anExpr match2: #(car _) o: [ :l |
		[ :list |
			{ self evalPair: l env: anEnv o: list.
				list carCdro: [ :car :cdr |
					aVal === car ] } ] fresh ]) tag: #car.