tests - ground
testApply
	self assert: (interpreter eval: #(apply (lambda (x) x) y) env: #((y . 1 ))) equals: 1.
	self assert: (interpreter eval: #(apply (lambda (x y) (list y x)) a b) env: #((a . 1) (b . 2))) equals: (2 cons: 1 cons).