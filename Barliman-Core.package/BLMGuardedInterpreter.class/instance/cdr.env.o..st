eval
cdr: anExpr env: anEnv o: aVal
	^ anExpr match2: #(cdr _) o: [ :l |
		[ :list |
			{ self evalPair: l env: anEnv o: list.
				list match2: #(_ | _) o: [ :car :cdr |
					aVal === cdr ] } ] fresh ].