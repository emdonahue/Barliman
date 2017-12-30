tests-functions
testTwoArgFunction
	| pair |
	pair := #lambda cons: (#a cons: #b cons) cons: (#cons cons: #a cons: #b cons) cons.
	self assert: (self define: #pair as: pair andApplyTo: (42 cons: 51 cons)) equals: (42 cons: 51 )