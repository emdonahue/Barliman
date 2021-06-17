eval
properList: anExpr env: anEnv o: aVal 
	<todo> "try swapping order of destructuring expr and val"
	^ { anExpr isEmptyo & aVal isEmptyo.
		({aVal. anExpr} match: #((_ . _) (_ . _)) o: [ :va :vd :ea :ed |
				"ProperList" 
				{ self eval: ea env: anEnv o: va.
					self properList: ed env: anEnv o: vd }]) tag: #properlist} conde.