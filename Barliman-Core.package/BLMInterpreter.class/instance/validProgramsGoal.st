ui
validProgramsGoal
	^ [ :program :result |
			self eval: program o: result
		] asGoal.