tests - synthesis
testSynthesizeNot
	self skip.
	self assert: (interpreter synthesize: #((false true) (true false)) hint: {#lambda. #(x). {#if. SKVar new. SKVar new. SKVar new}} asConsTree) equals: #(lambda (x) (if x false true)) asConsTree.