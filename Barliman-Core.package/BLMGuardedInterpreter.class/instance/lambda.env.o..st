primitives
lambda: anExpr env: anEnv o: aVal
	| argbd |
	"argbd := SKVar tag: #lam_argsbody."
	"ABBench a: ["
	^ (aVal match: #(closure _ | _) o: [ :env :args_body | 
			{ env === anEnv. anExpr === (#lambda cons: args_body) }]) tag: #lambda.
		"] b: [
		^  (SKGuardedPatternedFresh var: aVal pattern: (#closure cons: anEnv cons: argbd) vars: {argbd} block: [ :args_body | 
			anExpr === (#lambda cons: args_body) ]) tag: #lambda_closure.
	]"