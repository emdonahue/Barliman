ui
validPrograms
	^ [ :program :result |
			self eval: program o: result
		] asGoal run collect: [ :a | a first -> a second ].