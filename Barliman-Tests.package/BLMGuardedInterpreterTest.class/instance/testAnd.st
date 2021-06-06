tests - ground
testAnd 	
	self assert: (interpreter eval: #(apply (lambda (x y) (if x (if y (quote true) (quote false)) (quote false))) (quote true) (quote true))) equals: true.
	self assert: (interpreter eval: #(apply (lambda (x y) (if x (if y (quote true) (quote false)) (quote false))) (quote false) (quote true))) equals: false.
	self assert: (interpreter eval: #(apply (lambda (x y) (if x (if y (quote true) (quote false)) (quote false))) (quote true) (quote false))) equals: false.