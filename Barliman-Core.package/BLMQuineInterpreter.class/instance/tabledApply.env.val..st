as yet unclassified
tabledApply: anExpr env: anEnv val: aVal
	| args env body params arg |
	params := SKVar new.
	args := SKVar new.
	arg := SKVar new.
	env := SKVar new.
	body := SKVar new.
	^ anExpr
		match: #(? ?)
		o: [ :aprator :aprand | 
			[ :rand :val :outenv :rator | 
			"Apply"
			(self eval: rator env: outenv val: (BLMClosure tag cons: params cons: env cons: body cons)) & (self eval: rand env: outenv val: arg)
				& (params match: #(?) o: [ :param | self eval: body env: ((param cons: arg) cons: env) val: val ]) ]
				tabled: #apply
				inputs:
					{aprand.
					aVal.
					anEnv}
				outputs:
					{
					aprator.} ].