eval
list: anExpr env: anEnv o: aVal 
	^ {{aVal isEmptyo. anExpr === #list cons}.
		({anExpr. aVal} match: #((list . _) (_ . _)) o: 
			[ :e :a :d | "List" self properList: e env: anEnv o: (a cons: d) ]) tag: #list} conde.