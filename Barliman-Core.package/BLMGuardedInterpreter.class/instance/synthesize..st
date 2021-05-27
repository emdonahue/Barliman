as yet unclassified
synthesize: someExamples
	^ [ :program |
			someExamples inject: SKGoal succeed into: [ :g :e |
				g & (self eval: (program cons: e allButLast asConsTree) o: e last asConsTree)
				]
		] asGoal run ifEmpty: nil ifNotEmpty: [ :r | r first first ].