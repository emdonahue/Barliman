primitives
cons: anExpr env: anEnv o: aVal
		^ (aVal carCdro: [ :car :cdr |
			anExpr car: #cons listo: [ :e1 :e2 | "Cons"
				{ self eval: e1 env: anEnv o: car.
					self eval: e2 env: anEnv o: cdr} ]]) tag: #cons.