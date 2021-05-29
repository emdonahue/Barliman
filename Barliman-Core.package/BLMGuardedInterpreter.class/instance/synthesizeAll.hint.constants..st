ui
synthesizeAll: someExamples hint: aHint constants: someConstants
	^ [ :program |
			someExamples inject: 
				(someConstants inject: ((Cons read: aHint)===program) into: [ :g :c | g & (program absento: c) ])
				into: [ :g :e |
					g & (self eval: (program cons: (Cons read: e allButLast)) o: (Cons read: e last))
					]
		] asGoal run collect: [ :a | a first ].