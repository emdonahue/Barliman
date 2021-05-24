eval
extend: newEnv env: oldEnv args: theArgs vals: theVals
	<todo> "Good candidate for multi-term-matching"
	^ {{theArgs isEmptyo. theVals isEmptyo. newEnv === oldEnv}.
		theArgs match2: #(_ | _) o: [ :arg :args |
			theVals match2: #(_ | _) o: [ :param :params |
				newEnv match2: #((_ | _) | _) o: [ :var :val :env |
					{ var === arg.
						val === param.
						self extend: env env: oldEnv args: args vals: params }]]]} conde.