eval
car: anExpr env: anEnv o: aVal
	^ anExpr match2: #(car _) o: [ :l |
		[ :list |
			{ SKCustomConstraint vars: {l} block: [ :expr | expr isCons not or: [ (#(quote list cons) includes: expr car) not ] ]. 
				self eval: l env: anEnv o: list.
				list match2: #(_ | _) o: [ :car :cdr |
					aVal === car ] } ] fresh ].