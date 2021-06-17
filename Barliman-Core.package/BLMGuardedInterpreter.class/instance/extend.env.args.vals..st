helpers
extend: newEnv env: oldEnv args: theArgs vals: theVals
	<todo> "Good candidate for multi-term-matching"
	^ {{theArgs isEmptyo. theVals isEmptyo. newEnv === oldEnv}.
		(newEnv carCdrResto: [ :var :val :env |
			(theVals carCdro: [ :param :params |	
				(theArgs carCdro: [ :arg :args |			
					{ var === arg.
						val === param.
						self extend: env env: oldEnv args: args vals: params }]) tag: #extend_args]) tag: #extend_vals]) tag: #extend_env} conde tag: #extend.