list
properList: anExpr env: anEnv val: aVal
	^ anExpr isEmptyo & aVal isEmptyo | (anExpr carCdrIn: [ :a :d | aVal carCdrIn: [ :va :vd | (self eval: a env: anEnv val: va) & (self properList: d env: anEnv val: vd) ] ])