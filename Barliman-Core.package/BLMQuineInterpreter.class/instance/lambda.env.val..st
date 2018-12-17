as yet unclassified
lambda: anExpr env: anEnv val: aVal
	"if we store args and body next to each other, we can lift them directly from the lambda term into the closure."
	"try switching order of env check with actual lambda arg"
	<todo>
	^ anExpr
		car: #lambda
		cdrIn:
			[ :lambdaExpr | (self not: #lambda inEnvo: anEnv) & (lambdaExpr carCdrIn: [ :args :body | "Lambda" aVal === (BLMClosure tag cons: args cons: anEnv cons: body) ]) ].