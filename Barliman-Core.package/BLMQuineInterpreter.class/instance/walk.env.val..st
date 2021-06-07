lookup
walk: anExpr env: anEnv val: aVal
	^ anEnv carCdro: [ :kv :rest |
		kv carCdro: [ :k :v | 
			((k === anExpr) & (v === aVal)) | ((k =/= anExpr) & (self walk: anExpr env: rest val: aVal))
			 ]
		 ]