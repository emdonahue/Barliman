tests - ground
testAnd 	
	self assert: (interpreter eval: #((lambda (x y) (if x (if y true false) false)) true true)) equals: true.
	self assert: (interpreter eval: #((lambda (x y) (if x (if y true false) false)) false true)) equals: false.
	self assert: (interpreter eval: #((lambda (x y) (if x (if y true false) false)) true false)) equals: false.