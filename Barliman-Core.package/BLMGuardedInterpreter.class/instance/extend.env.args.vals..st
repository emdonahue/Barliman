helpers
extend: newEnv env: oldEnv args: theArgs vals: theVals
	<todo> "Good candidate for multi-term-matching"
			^ {{theArgs isEmptyo. theVals isEmptyo. newEnv === oldEnv}.
		theArgs carCdro: [ :arg :args |
			theVals carCdro: [ :param :params |
				newEnv carCdrResto: [ :var :val :env | "ExtendEnv"
					{ var === arg.
						val === param.
						self extend: env env: oldEnv args: args vals: params }]]]} conde tag: #extend.