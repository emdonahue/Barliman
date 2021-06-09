ui
validPrograms
	^ self validProgramsGoal run collect: [ :a | a first -> a second ].