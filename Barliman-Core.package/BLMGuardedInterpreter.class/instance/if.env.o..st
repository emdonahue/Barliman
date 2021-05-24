eval
if: anExpr env: anEnv o: aVal
	"Uses literal true/false instead of non-nil."
	^ anExpr match2: #(if _ _ _) o: [ :if :then :else |
		[ :cond |
		{ self eval: if env: anEnv o: cond.
			{ {cond === true. self eval: then env: anEnv o: aVal}.
				{cond === false. self eval: else env: anEnv o: aVal} } conde }
	] fresh ].