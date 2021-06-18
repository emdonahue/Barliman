primitives
car: anExpr env: anEnv o: aVal	
	^ ({anExpr} match: #((car _)) o: [ :l :list |
			{ {list} match: #((_ . _)) o: [ :car :cdr | car === aVal ].
				self evalPair: l env: anEnv o: list } ]) tag: #car.  