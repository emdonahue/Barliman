tests - ground
testCar
	self assert: (interpreter eval: #(car x) env: #((x . (1)))) equals: 1.