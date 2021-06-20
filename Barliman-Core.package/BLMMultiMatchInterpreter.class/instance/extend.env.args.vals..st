eval
extend: newEnv env: oldEnv args: theArgs vals: theVals
	^ {{theArgs isEmptyo. theVals isEmptyo. newEnv === oldEnv}.
		({newEnv. theVals. theArgs} match: #(((_1 . _2) . _) (_2 . _) (_1 . _)) o: 
			[ :var :val :env :params :args |
					self extend: env env: oldEnv args: args vals: params]) tag: #extend} conde. 