tests
testList
	self assert: (self eval: #list cons) equals: Cons empty.
	self assert: (self eval: #(list (quote 1)) asConsTree) equals: 1 cons.
	self assert: (self eval: #(list (list (quote 1))) asConsTree) equals: 1 cons cons.
	self assert: (self eval: #(list (quote 1) (quote 2)) asConsTree) equals: (1 cons: 2 cons).
	self assert: (self eval: #(list x y) asConsTree) equals: (1 cons: 2 cons).