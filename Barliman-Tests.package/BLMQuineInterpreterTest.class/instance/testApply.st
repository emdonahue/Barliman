tests
testApply
	self assert: (self eval: #(#(lambda #(a) #(quote 1)) #(#quote 2)) asConsR) equals: 1.
		self assert: (self eval: #(#(lambda #(a) a) #(#quote 2)) asConsR) equals: 2.