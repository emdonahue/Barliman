primitives
lambda: anExpr env: anEnv o: aVal
	| argbd |
	"argbd := SKVar tag: #lam_argsbody."
	^ (aVal match: #(closure _ | _) o: [ :env :args_body | 
			{ env === anEnv. anExpr === (#lambda cons: args_body) }]) tag: #lambda.