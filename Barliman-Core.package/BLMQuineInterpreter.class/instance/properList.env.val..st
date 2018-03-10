list
properList: anExpr env: anEnv val: aVal
	<todo> "try swapping order of destructuring expr and val"
	^ anExpr isEmptyo & aVal isEmptyo
		| (anExpr carCdrIn: [ :a :d | aVal carCdrIn: [ :va :vd | "ProperList" (self eval: a env: anEnv val: va) & (self properList: d env: anEnv val: vd) ] ])