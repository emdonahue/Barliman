tests
testLambda
	self assert: (self eval: #(lambda #(a) (quote 42)) asConsTree) equals: (BLMClosure tag cons: #a cons cons: x1y2 cons: (#quote cons: 42 cons) cons)