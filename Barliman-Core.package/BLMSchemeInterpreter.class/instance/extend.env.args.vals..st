parameters
extend: newEnv env: oldEnv args: argList vals: valList
	"add val tag"

	<todo>
	^ {{argList isEmptyo.
	valList isEmptyo.	"Is it necessary to check both? Can they differ in size?"
	(newEnv === oldEnv)}.
	[ :arg :args :val :vals :env | 
	{(argList caro: arg cdro: args).
	(valList caro: val cdro: vals).
	(env === ((#val cons: (arg cons: val)) cons: oldEnv)).
	arg isSymbolo.	"shouldnt this have been checked somewhere already?"
	(self
		extend: newEnv
		env: env
		args: args
		vals: vals)} ]} asConde