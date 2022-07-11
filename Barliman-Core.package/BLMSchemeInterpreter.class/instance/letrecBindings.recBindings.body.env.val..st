letrec
letrecBindings: theBindings recBindings: theRecs body: theBody env: theEnv val: theVal
	"Can we just reuse the lambda term without rebuilding it?"
	"theBindings are the raw syntax, and theRecs are the evaluated, bound environment terms. Each binding has the outer bindings bound as recs during evaluation."

	<todo>
	^ {{theBindings isEmptyo. "If all bindings have been applied to the env, run body with all recs bound to the special rec environment var type."
	"(theVal === ((#rec cons: theRecs) cons: theEnv))"
	(self eval: theBody env: ((#rec cons: theRecs) cons: theEnv) out: theVal)}.
	"Otherwise, eval the next binding."
	[ :pname :x :body :rest | 
	{(theBindings === ((pname cons: (#lambda cons: x cons: body cons) cons) cons: rest)).
	pname isSymbolo.
	(self areParameters: x).
	(self
		letrecBindings: rest
		recBindings: ((pname cons: (#lambda cons: x cons: body cons)) cons: theRecs)
		body: theBody
		env: theEnv
		val: theVal)} ]} asGoal