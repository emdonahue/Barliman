eval
evalList: someArgs env: anEnv o: someVals
	^ {{ someArgs isEmptyo. someVals isEmptyo }.
		someVals match2: #(_ | _) o: [ :val :vals |
		someArgs match2: #(_ | _) o: [ :arg :args |
			{ self eval: arg env: anEnv o: val.
				self evalList: args env: anEnv o: vals } ]]} conde.