primitives
if: anExpr env: anEnv o: aVal
	^ ([ :if :then :else :cond |
		{ anExpr === (#if cons: if cons: then cons: else cons).
			{ self evalBool: if env: anEnv o: cond.
			{ {cond === true. self eval: then env: anEnv o: aVal}.
				{cond === false. self eval: else env: anEnv o: aVal} } conde } asGoal }]) asGoal tag: #if.