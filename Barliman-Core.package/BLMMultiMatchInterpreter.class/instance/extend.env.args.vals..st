eval
extend: newEnv env: oldEnv args: theArgs vals: theVals
	^ {{theArgs isEmptyo. theVals isEmptyo. newEnv === oldEnv}.
		({newEnv. theVals. theArgs} match: #(((_ . _) . _) (_ . _) (_ . _)) o: 
			[ :var :val :env :param :params :arg :args |
					{ var === arg.
						val === param.
						self extend: env env: oldEnv args: args vals: params }]) tag: #extend} conde. 