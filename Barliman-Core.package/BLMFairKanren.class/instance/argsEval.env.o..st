eval
argsEval: someArgs env: anEnv o: someVals
	^ {{ someArgs isEmptyo. someVals isEmptyo }.
		[ :val :vals :arg :args | "EvalList"
			{ someArgs === (arg cons: args).
				someVals === (val cons: vals). 
				self eval: arg env: anEnv o: val.
				self argsEval: args env: anEnv o: vals } ] fresh} conde.