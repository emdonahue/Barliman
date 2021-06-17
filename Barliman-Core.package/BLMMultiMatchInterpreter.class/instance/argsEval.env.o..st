eval
argsEval: someArgs env: anEnv o: someVals
	^ {{ someArgs isEmptyo. someVals isEmptyo }.
		({someVals. someArgs} match: #((_ . _) (_ . _)) o: 
			[ :val :vals :arg :args | "EvalList"
				{ self eval: arg env: anEnv o: val.
					self argsEval: args env: anEnv o: vals } ]) tag: #argseval} conde.