as yet unclassified
if: anExpr env: anEnv val: aVal
	| branchP |
	branchP := SKVar new.
	^ anExpr
		carCdrIn: [ :if :ifBody | 
			if === #if
				&
					(ifBody
						carCdrIn: [ :cond :branches | 
							branches
								carCdrIn: [ :tBranch :eBranches | 
									eBranches
										carCdrIn: [ :fBranch :_ | 
											_ isEmptyo & (self eval: cond env: anEnv val: branchP)
												& (branchP === true & (self eval: tBranch env: anEnv val: aVal) | (branchP =/= true & (self eval: fBranch env: anEnv val: aVal))) ] ] ]) ]