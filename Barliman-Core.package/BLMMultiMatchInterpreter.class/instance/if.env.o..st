primitives
if: anExpr env: anEnv o: aVal
	"ABBench a: [
	^ ({anExpr} match: #((if _ _ _)) o: [ :if :then :else |
		[ :cond |		
		{ self evalBool: if env: anEnv o: cond.
			{ {cond === true. self eval: then env: anEnv o: aVal}.
				{cond === false. self eval: else env: anEnv o: aVal} } conde } ] fresh
	 ]) tag: #if.
	] b: ["
"	ABBench a: ["
	^ (anExpr car: #if listo: [ :if :then :else |
		[[ :cond |		
		{ self evalBool: if env: anEnv o: cond.
			{ {cond === true. self eval: then env: anEnv o: aVal}.
				{cond === false. self eval: else env: anEnv o: aVal} } conde } ] fresh ] fresh
	 ]) tag: #if.
	"] b: [
	^ (anExpr car: #if list: 3 o: [ :if :then :else :cond |
		{ self evalBool: if env: anEnv o: cond.
			cond match: #_ o: [ :c |
			{ {c === true. self eval: then env: anEnv o: aVal}.
				{c === false. self eval: else env: anEnv o: aVal} } conde ] } 
	 ]) tag: #if.
	]"
	"]"
	"
	^ ({anExpr} match: #((if _ _ _)) o: [ :if :then :else :cond |
		{ self evalBool: if env: anEnv o: cond.
			{ {cond === true. self eval: then env: anEnv o: aVal}.
				{cond === false. self eval: else env: anEnv o: aVal} } conde }
	 ]) tag: #if.
]"