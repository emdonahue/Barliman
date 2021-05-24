tests
testCar
	self assert: (interpreter eval: #(car (list (quote 1)))) equals: 1.