primitives
cdr: anExpr env: anEnv o: aVal
	^ (anExpr car: #cdr listo: [ :l |
		[ :list |
			{ self evalPair: l env: anEnv o: list.
				list carCdro: [ :car :cdr |
					aVal === cdr ] } ] fresh ]) tag: #cdr.