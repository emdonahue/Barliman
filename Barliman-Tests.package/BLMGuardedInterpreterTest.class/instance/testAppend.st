tests - ground
testAppend
	self assert: (interpreter eval: #((lambda (h t) (if (null h) t (car h))) (list) (list (quote 2)))) equals: 2 cons.
	self assert: (interpreter eval: #((lambda (h t) (if (null h) t (cons (car h) t))) (list (quote 1)) (list (quote 2)))) equals: (1 cons: 2 cons).
	"self assert: [ :append :o | 
		{ append === #((lambda (h t) (if (null h) t (car h))) (list) (list (quote 2))) asConsTree.
		interpreter eval: append env: Cons empty o: o }] asGoal run"
	"self assert: (interpreter eval: #((lambda (h t) (if (null h) t (quote 1))) (list (quote 1)) (list (quote 2)))) equals: (1 cons: 2 cons)."