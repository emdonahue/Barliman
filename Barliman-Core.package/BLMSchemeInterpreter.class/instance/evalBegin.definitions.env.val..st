begin
evalBegin: anExpr definitions: theDefs env: anEnv val: aVal
	"Note that theDefinitions are part of the recursion, not a logic variable."
<todo>
	^ {[ :expr | 
	{(expr cons === anExpr).
	(theDefs
		ifEmpty: [ self eval: expr env: anEnv out: aVal ]
		ifNotEmpty: [ self
				letrecBindings: theDefs
				recBindings: Cons empty
				body: expr
				env: anEnv
				val: aVal ])} ].
	[ :name :args :body :rest | 
	{(((#define cons: name cons: (#lambda cons: args cons: body cons) cons) cons: rest) === anExpr).
	name isSymbolo.
	(self
		evalBegin: rest
		definitions: (theDefs add: (name cons: (#lambda cons: args cons: body cons) cons: theDefs))
		env: anEnv
		val: aVal)} ]} asConde