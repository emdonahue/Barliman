tests-functions
testOneArgFunction
	| identity |
	identity := #lambda cons: #a cons cons: #a cons.
	self assert: (self define: #identity as: identity andApplyTo: 42 cons) equals: 42