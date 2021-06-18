primitives
cdr: anExpr env: anEnv o: aVal	
	^ ({anExpr} match: #((cdr _)) o: [ :l :list |
			{ {list} match: #((_ . _)) o: [ :car :cdr | cdr === aVal ].
				self evalPair: l env: anEnv o: list } ]) tag: #cdr.  