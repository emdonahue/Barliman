lookup
walk: anExpr env: anEnv val: aVal
	^ anEnv carCdrIn: [ :kv :rest |
		kv carCdrIn: [ :k :v | 
			((k === anExpr) & (v === aVal)) | ((k =/= anExpr) & (self walk: anExpr env: rest val: aVal))
			 ]
		 ]