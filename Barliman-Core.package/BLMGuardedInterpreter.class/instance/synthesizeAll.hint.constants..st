ui
synthesizeAll: someExamples hint: aHint constants: someConstants
	^ [ :program |
			someExamples inject: 
				(someConstants inject: ((Cons read: aHint)===program) into: [ :g :c | g & (program absento: c) ])
				into: [ :g :e |
				
					g & (self eval: program env: (Cons read: (e allButLast collectWithIndex: [ :input :i | {#_,i asString. #'.'. input }])) o: (Cons read: e last))
					]
		] asGoal run collect: [ :a | a first ].