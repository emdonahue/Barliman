eval
null: anExpr env: anEnv o: aVal
	^ anExpr match2: #(null _) o: [ :n |
		[ :null |
		{ self eval: n env: anEnv o: null.
		{ {null isEmptyo. aVal === true}.
			{null isNotEmptyo. aVal === false} } conde } ] fresh ].