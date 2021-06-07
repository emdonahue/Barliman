as yet unclassified
if: anExpr env: anEnv val: aVal
	| branchP |
	branchP := SKVar new.
	^ anExpr
		car: #if
		cdro: [ :ifBody | 
			ifBody
				carCdro: [ :cond :branches | 
					branches
						carCdro: [ :tBranch :eBranches | 
							eBranches
								carCdro: [ :fBranch :_ | 
									"If"
									_ isEmptyo & (self eval: cond env: anEnv val: branchP)
										& (branchP === true & (self eval: tBranch env: anEnv val: aVal) | (branchP =/= true & (self eval: fBranch env: anEnv val: aVal))) ] ] ] ]