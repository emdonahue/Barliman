tests - ground
testBoolean
	self assert: (interpreter eval: true) equals: true.
	self assert: (interpreter eval: false) equals: false.