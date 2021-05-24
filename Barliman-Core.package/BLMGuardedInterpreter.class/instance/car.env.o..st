eval
car: anExpr env: anEnv o: aVal
	^ anExpr match2: #(car _) o: [ :l |
		[ :list |
			{ self eval: l env: anEnv o: list.
				list match2: #(_ | _) o: [ :car :cdr |
					aVal === car ] } ] fresh ].