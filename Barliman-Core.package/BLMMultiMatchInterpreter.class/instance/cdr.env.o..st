primitives
cdr: anExpr env: anEnv o: aVal	
	^ (anExpr car: #cdr list: 1 o: [ :cdrlist :tmpcar |
		self evalPair: cdrlist env: anEnv o: (tmpcar cons: aVal) ]) tag: #cdr.  