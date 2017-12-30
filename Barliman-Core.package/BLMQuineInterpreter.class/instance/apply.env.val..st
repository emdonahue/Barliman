as yet unclassified
apply: anExpr env: anEnv val: aVal
	| args env body params arg |
	params := SKVar new.
	args := SKVar new.
	arg := SKVar new.
	env := SKVar new.
	body := SKVar new.
	^ anExpr
		carCdrIn: [ :rator :rands | 
			rands
				carCdrIn: [ :rand :_ | 
					(self eval: rator env: anEnv val: (BLMClosure tag cons: params cons: env cons: body cons)) & (self eval: rand env: anEnv val: arg)
						& (params carCdrIn: [ :param :_2 | self eval: body env: ((param cons: arg) cons: env) val: aVal ]) ] ]