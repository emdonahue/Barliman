letrec
letrecBindings: theBindings recBindings: theRecs body: theBody env: theEnv val: theVal
	"Can we just reuse the lambda term without rebuilding it?"

	<todo>
	^ {{theBindings isEmptyo.
	"(theVal === ((#rec cons: theRecs) cons: theEnv))"
	(self eval: theBody env: ((#rec cons: theRecs) cons: theEnv) out: theVal)}.
	[ :pname :x :body :rest | 
	{(theBindings === ((pname cons: (#lambda cons: x cons: body cons) cons) cons: rest)).
	pname isSymbolo.
	(self areParameters: x).
	(self
		letrecBindings: rest
		recBindings: ((pname cons: (#lambda cons: x cons: body cons)) cons: theRecs)
		body: theBody
		env: theEnv
		val: theVal)} ]} asConde