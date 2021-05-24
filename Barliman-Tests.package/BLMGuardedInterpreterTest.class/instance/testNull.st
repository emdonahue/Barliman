tests
testNull
	self assert: (interpreter eval: #(null (list))) equals: true.
	self assert: (interpreter eval: #(null (quote 1))) equals: false.
	self assert: (interpreter eval: #(null (list (quote 1)))) equals: false.