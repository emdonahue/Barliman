tests
testSynthesizeQuine
	| quote list lambda quine |
	self skip.
	quote := #list cons: (#quote cons: #quote cons) cons: #x cons.
	list := #list cons: #x cons: quote cons.
	lambda := #lambda cons: #x cons cons: list cons.
	quine := lambda cons: (#quote cons: lambda cons) cons.
	"self assert: [ :q | interpreter eval: q o: q ] asGoal run first first equals: quine."
	[ :q | interpreter eval: q o: q ] asGoal run first first inspect.
	