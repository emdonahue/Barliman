primitives
if: anExpr env: anEnv o: aVal
	<todo>"try sending true/false literals to eval"
	"Uses literal true/false instead of non-nil."
	^ (anExpr car: #if listo: [ :if :then :else |
		[ :cond |
		{ self evalBool: if env: anEnv o: cond.
			{ {cond === true. self eval: then env: anEnv o: aVal}.
				{cond === false. self eval: else env: anEnv o: aVal} } conde }
	] fresh ]) tag: #if.
