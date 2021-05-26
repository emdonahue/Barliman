eval
cons: anExpr env: anEnv o: aVal
	^ aVal match2: #(_ | _) o: [ :car :cdr |
			anExpr match2: #(cons _ _) o: [ :e1 :e2 | "Cons"
				{ self eval: e1 env: anEnv o: car.
					self eval: e2 env: anEnv o: cdr.
					aVal === (car cons: cdr) } ]].