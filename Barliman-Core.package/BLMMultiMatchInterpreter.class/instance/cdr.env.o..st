primitives
cdr: anExpr env: anEnv o: aVal	
	^ ({anExpr} match: #((cdr _)) o: [ :cdrlist :tmpcar |
				self evalPair: cdrlist env: anEnv o: (tmpcar cons: aVal) ]) tag: #cdr.  