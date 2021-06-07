eval
properList: anExpr env: anEnv o: aVal 
	^ { anExpr isEmptyo & aVal isEmptyo.
		[ :va :vd :ea :ed | "ProperList" 
			{ anExpr === (ea cons: ed).
				aVal === (va cons: vd).
			self eval: ea env: anEnv o: va.
			self properList: ed env: anEnv o: vd }]} conde.