list
properList: anExpr env: anEnv val: aVal
	<todo> "try swapping order of destructuring expr and val"
	^ anExpr isEmptyo & aVal isEmptyo
		| (anExpr carCdro: [ :a :d | aVal carCdro: [ :va :vd | "ProperList" (self eval: a env: anEnv val: va) & (self properList: d env: anEnv val: vd) ] ])