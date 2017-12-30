tests
testLookup
	self assert: (self eval: #x) equals: 1.
		self assert: (self eval: #y) equals: 2.
			self assert: (interpreter eval: #z env: x1y2 val: x) isFailure