primitives
cdr: anExpr env: anEnv o: aVal
	^ (anExpr match2: #(cdr _) o: [ :l |
		[ :list |
			{ self evalPair: l env: anEnv o: list.
				list carCdro: [ :car :cdr |
					aVal === cdr ] } ] fresh ]) tag: #cdr.