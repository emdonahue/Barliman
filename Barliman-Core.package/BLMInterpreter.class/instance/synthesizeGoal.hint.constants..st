ui
synthesizeGoal: someExamples hint: aHint constants: someConstants
	| loopbody |
	loopbody := {SKVar new. SKVar new. SKVar new. {SKVar new. SKVar new. SKVar new}} asConsTree.
	^ [ :program |
			someExamples inject: 
				(someConstants inject: ((Cons read: aHint)===program) "& (loopbody===program)" into: [ :g :c | g & (program absento: c) ])
				into: [ :g :e |
				
					g & (self eval: (Cons read: aHint) 
						env: (
						"(Cons read: #(loop . (closure () (_1 _2) (if (null _1) _2 (cons (car _1) (apply loop (cdr _1) _2))))))"
						(#loop cons: (#closure cons: Cons empty cons: (#_1 cons: #_2 cons) cons: program cons)) 
						cons: (Cons read: (e allButLast collectWithIndex: [ :input :i | {#_,i asString. #'.'. input }]))) 
						o: (Cons read: e last))
					]
		] asGoal.