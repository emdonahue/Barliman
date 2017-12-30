tests
testQuote
	self assert: (self eval: (#quote cons: 42 cons) ) equals: 42