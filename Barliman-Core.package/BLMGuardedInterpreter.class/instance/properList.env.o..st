eval
properList: anExpr env: anEnv o: aVal 
	<todo> "try swapping order of destructuring expr and val"
	^ { anExpr isEmptyo & aVal isEmptyo.
		aVal match2: #(_ | _) o: [ :va :vd | 
			anExpr match2: #(_ | _) o: [ :ea :ed | 
				"ProperList" 
				{ self eval: ea env: anEnv o: va.
					self properList: ed env: anEnv o: vd }]]} conde.