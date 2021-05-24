tests
testQuote 	
	self assert: (interpreter eval: #(quote 42)) equals: 42.