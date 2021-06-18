primitives
if: anExpr env: anEnv o: aVal
	^ ({anExpr} match: #((if _ _ _)) o: [ :if :then :else :cond |
		{ self evalBool: if env: anEnv o: cond.
			{ {cond === true. self eval: then env: anEnv o: aVal}.
				{cond === false. self eval: else env: anEnv o: aVal} } conde }
	 ]) tag: #if.