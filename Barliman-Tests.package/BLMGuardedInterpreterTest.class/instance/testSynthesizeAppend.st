tests - ground
testSynthesizeAppend
	self skip.
	self assert: (interpreter synthesize: #( (() () ()) (() (1) (1)) ((1) (2) (1 2)) ((1) (2 3) (1 2 3))) constants: #(1 2)) equals: #(if (null _1) _2 (cons (car _1) _2)) asConsTree.
	"self assert: [ :append :o | 
		{ append === #((lambda (h t) (if (null h) t (car h))) (list) (list (quote 2))) asConsTree.
		interpreter eval: append env: Cons empty o: o }] asGoal run"
	"self assert: (interpreter eval: #((lambda (h t) (if (null h) t (quote 1))) (list (quote 1)) (list (quote 2)))) equals: (1 cons: 2 cons)."