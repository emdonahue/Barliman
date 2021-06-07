primitives
cdr: anExpr env: anEnv o: aVal
	^ (anExpr car: #cdr list: 1 o: [ :l :list |
			{ self evalPair: l env: anEnv o: list.
				list carCdro: [ :car :cdr |
					aVal === cdr ] } ]) tag: #cdr.