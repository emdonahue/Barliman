ui
synthesizeLambdaGoal: someExamples hint: aHint constants: someConstants
	^ [ :program |
			someExamples inject: 
				(someConstants inject: ((Cons read: aHint)===program) into: [ :g :c | g & (program absento: c) ])
				into: [ :g :e |
					g & (self eval: (#apply cons: (Cons read: aHint) cons: (Cons read: e allButLast)) env: Cons empty o: (Cons read: e last))
					]
		] asGoal.