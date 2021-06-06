helpers
properList: anExpr env: anEnv o: aVal 
	<todo> "try swapping order of destructuring expr and val"
	^ { anExpr isEmptyo & aVal isEmptyo.
		(aVal carCdro: [ :va :vd | 
			(anExpr carCdro: [ :ea :ed | 
				"ProperList" 
				{ self eval: ea env: anEnv o: va.
					self properList: ed env: anEnv o: vd }]) tag: #properlist_expr]) tag: #properlist_val} conde.