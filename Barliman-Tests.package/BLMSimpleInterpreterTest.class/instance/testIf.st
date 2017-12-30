tests
testIf
	x1y2 := (#z cons: true) cons: x1y2.
	self assert: (self eval: #(if true #(quote 1) #(quote 0)) asConsTree) equals: 1.
	self assert: (self eval: #(if false #(quote 1) #(quote 0)) asConsTree) equals: 0.
	self assert: (self eval: #(if z #(quote 1) #(quote 0)) asConsTree) equals: 1