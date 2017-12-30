tests
testBool
	self assert: (self eval: true) equals: true.
	self assert: (self eval: false) equals: false