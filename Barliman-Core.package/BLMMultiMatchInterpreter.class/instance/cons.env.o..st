primitives
cons: anExpr env: anEnv o: aVal
	^ ({aVal. anExpr} match: #((_ . _) (cons _ _)) o: [ :car :cdr :e1 :e2 | "Cons"
				{ self eval: e1 env: anEnv o: car.
					self eval: e2 env: anEnv o: cdr} ]) tag: #cons.