primitives
cons: anExpr env: anEnv o: aVal
		^ [ :car :cdr :e1 :e2 |
			{aVal === (car cons: cdr).
				anExpr === (#cons cons: e1 cons: e2 cons).
				self eval: e1 env: anEnv o: car.
				self eval: e2 env: anEnv o: cdr}].