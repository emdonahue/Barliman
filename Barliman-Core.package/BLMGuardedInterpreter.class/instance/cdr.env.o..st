primitives
cdr: anExpr env: anEnv o: aVal
	^ (anExpr car: #cdr list: 1 o: [ :l :list |
			{ list carCdro: [ :car :cdr | aVal === cdr ].
				self evalPair: l env: anEnv o: list } ]) tag: #cdr.