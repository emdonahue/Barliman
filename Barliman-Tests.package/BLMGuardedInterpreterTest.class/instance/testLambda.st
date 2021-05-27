tests - ground
testLambda
	self assert: (interpreter eval: #(lambda (x) x)) equals: #(closure () (x) x) asConsTree.
	self assert: (interpreter eval: #(lambda (x y) (list x y))) equals: #(closure () (x y) (list x y)) asConsTree.