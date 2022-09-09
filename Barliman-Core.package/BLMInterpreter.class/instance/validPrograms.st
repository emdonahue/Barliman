ui
validPrograms
	^ self validProgramsGoal runList collect: [ :a | a first -> a second ].