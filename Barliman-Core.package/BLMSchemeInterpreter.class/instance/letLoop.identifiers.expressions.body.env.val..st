let
letLoop: bindingPairs identifiers: theIds expressions: theExprs body: aBody env: anEnv val: aVal
	^ {{bindingPairs isEmptyo.
	[ :vals :env | 
	{self evalListo: theExprs  env: anEnv  out: vals.
	self extend: env env: anEnv args: theIds vals: vals.
	self eval: aBody env: env out: aVal} ]}.
	[ :id :expr :rest | 
	{(bindingPairs === ((id cons: expr cons) cons: rest)).
	id isSymbolo.
	(self
		letLoop: rest
		identifiers: (id cons: theIds)
		expressions: (expr cons: theExprs)
		body: aBody
		env: anEnv
		val: aVal)} ]} asGoal