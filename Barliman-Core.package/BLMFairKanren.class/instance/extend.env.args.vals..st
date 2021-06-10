eval
extend: newEnv env: oldEnv args: theArgs vals: theVals
	^ {{theArgs isEmptyo. theVals isEmptyo. newEnv === oldEnv}.
		[ :arg :args :param :params :env | "ExtendEnv"
					{ newEnv === ((arg cons: param) cons: env).
						theArgs === (arg cons: args).
						theVals === (param cons: params).
						self extend: env env: oldEnv args: args vals: params }] fresh} conde.