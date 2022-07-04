tests-primitive
testCar
	| states |
	states := (BLMSchemeInterpreter new eval: #(car #(cons #(quote 42) #(quote 51))) asConsR out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 42