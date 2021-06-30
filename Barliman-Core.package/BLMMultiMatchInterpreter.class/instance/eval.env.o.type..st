eval
eval: anExpr env: anEnv o: aVal type: badTypes
	"ABBench a: ["
		^ super eval: anExpr env: anEnv o: aVal type: badTypes
	"	] b: [
	^ {anExpr} match: #(_) o: [ :x |
	super eval: x env: anEnv o: aVal type: badTypes ]
	
	]."