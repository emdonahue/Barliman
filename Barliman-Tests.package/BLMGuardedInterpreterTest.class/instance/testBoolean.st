tests - ground
testBoolean
	self skip.
	self assert: (interpreter eval: true) equals: true.
	self assert: (interpreter eval: false) equals: false.