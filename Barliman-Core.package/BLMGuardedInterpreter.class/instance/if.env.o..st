eval
if: anExpr env: anEnv o: aVal
	<todo>"try sending true/false literals to eval"
	"Uses literal true/false instead of non-nil."
"ABBench a: ["
	^ anExpr match2: #(if _ _ _) o: [ :if :then :else |
		[ :cond |
		{ self evalBool: if env: anEnv o: cond.
			{ {cond === true. self eval: then env: anEnv o: aVal}.
				{cond === false. self eval: else env: anEnv o: aVal} } conde }
	] fresh ].
"] b: [
^ anExpr match2: #(if _ _ _) o: [ :if :then :else |
		[ :cond |
			{ {self evalBool: if env: anEnv o: true. self eval: then env: anEnv o: aVal}.
				{self evalBool: if env: anEnv o: false. self eval: else env: anEnv o: aVal} } conde
	] fresh ].

]"