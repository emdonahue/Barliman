eval
quote: anExpr o: aValue
	^ anExpr match2: #(quote _) o: [ :quoted | aValue === quoted ].