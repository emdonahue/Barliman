helpers
argsEval: someArgs env: anEnv o: someVals
	^ {{ someArgs isEmptyo. someVals isEmptyo }.
		(someVals carCdro: [ :val :vals |
			(someArgs carCdro: [ :arg :args | "EvalList"
				{ self eval: arg env: anEnv o: val.
					self argsEval: args env: anEnv o: vals } ]) 
			tag: #argeval_args]) 
		tag: #argeval_vals} conde 
	tag: #args_eval.