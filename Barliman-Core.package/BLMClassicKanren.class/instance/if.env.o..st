primitives
if: anExpr env: anEnv o: aVal
	^ ([ :if :then :else |
		{ anExpr === (#if cons: if cons: then cons: else).
			[ :cond |
			{ self evalBool: if env: anEnv o: cond.
			{ {cond === true. self eval: then env: anEnv o: aVal}.
				{cond === false. self eval: else env: anEnv o: aVal} } conde }]}]) asGoal tag: #if.